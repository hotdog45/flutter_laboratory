import 'dart:collection';
import 'dart:io';

import 'package:dio/adapter.dart';
import 'package:dio/dio.dart';
import 'package:dio_log/dio_log.dart';
import 'package:flutter_laboratory/common/config/config.dart';
import 'package:flutter_laboratory/common/model/gateway_base_model.dart';
import 'package:flutter_laboratory/common/utils/app_init_utils.dart';
import 'package:flutter_laboratory/common/utils/local_storage.dart';
import 'package:flutter_laboratory/common/utils/navigator_utils.dart';

import 'address.dart';
import 'code.dart';
import 'interceptors/header_interceptor.dart';
import 'interceptors/log_interceptor.dart';
import 'interceptors/response_interceptor.dart';
import 'result_data.dart';

///http请求
class HttpManager {
  static const CONTENT_TYPE_FORM = "application/x-www-form-urlencoded";

  Dio _dio = new Dio(); // 使用默认配置

  HttpManager() {
    _dio.interceptors.add(HeaderInterceptors());

    _dio.interceptors.add(LogsInterceptors());
    _dio.interceptors.add(DioLogInterceptor());

    _dio.interceptors.add(ResponseInterceptors());
    _dio.options.connectTimeout = 10000; // 服务器链接超时，毫秒
    _dio.options.receiveTimeout = 10000; // 响应流上前后两次接受到数据的间隔，毫秒

    //代理
    setupProxy();
  }

  setupProxy() async {
    String ip = await LocalStorage.get(Config.KEY_APP_IP) ?? "";
    String port = await LocalStorage.get(Config.KEY_APP_PORT) ?? "";
    if (ip.isEmpty || port.isEmpty) {
      return;
    }
    String proxy = "PROXY  " + ip + ":" + port;
    if (proxy.length > 0) {
      (_dio.httpClientAdapter as DefaultHttpClientAdapter).onHttpClientCreate = (client) {
        client.badCertificateCallback = (X509Certificate cert, String host, int port) {
          return Platform.isAndroid;
        };
        client.findProxy = (u) {
          return proxy;
        };
      };
    }
  }

  ///发起网络请求--网关版
  ///[ url] 请求url
  ///[ params] 请求参数
  ///PackageInfo packageInfo = await PackageInfo.fromPlatform();
  //
  ////APP名称
  //String appName = packageInfo.appName;
  ////包名
  //String packageName = packageInfo.packageName;
  ////版本名
  //String version = packageInfo.version;
  ////版本号
  //String buildNumber = packageInfo.buildNumber;

  netFetchGateway(String api, params, {noTip = false}) async {
    ///---------请求头-----------------///
    Map<String, dynamic> headers = new HashMap();

    headers["app-id"] = "ypdj";
    headers["app-platform"] = Platform.isIOS ? "ios" : "android";
    headers["app-version"] =  "110";
    headers["app-version-name"] = "v2.0.0";
    String shopId = await LocalStorage.get(Config.USER_SHOP_ID) ?? "";
    headers["app-device-id"] = shopId;

    Options option = new Options(method: "post", headers: headers);

    ///---------请求参数-----------------///
    Map<String, dynamic> body = new HashMap();
    String token = await LocalStorage.get(Config.USER_TOKEN) ?? "";
    String apiNum = await LocalStorage.get(Config.KEY_API_NUM);

    body["api"] = api;
    body["version"] = "1.0";
    body["token"] = token;

    body["timestamp"] = DateTime.now().millisecondsSinceEpoch;
    body["params"] = params;

    String behaviorChallenge =
        await LocalStorage.get(Config.BEHAVIOR_CHALLENGE) ?? "";
    String behaviorValidate =
        await LocalStorage.get(Config.BEHAVIOR_VALIDATE) ?? "";
    String behaviorSeccode =
        await LocalStorage.get(Config.BEHAVIOR_SEC_CODE) ?? "";
    if (behaviorChallenge.isNotEmpty &&
        behaviorValidate.isNotEmpty &&
        behaviorSeccode.isNotEmpty) {
      body["behaviorChallenge"] = behaviorChallenge;
      body["behaviorValidate"] = behaviorValidate;
      body["behaviorSeccode"] = behaviorSeccode;
    }

    resultError(DioError e) {
      Response errorResponse;
      if (e.response != null) {
        errorResponse = e.response;
      } else {
        errorResponse = new Response(statusCode: 666);
      }
      if (e.type == DioErrorType.CONNECT_TIMEOUT ||
          e.type == DioErrorType.RECEIVE_TIMEOUT) {
        errorResponse.statusCode = Code.NETWORK_TIMEOUT;
      }
      return new ResultData(
          Code.errorHandleFunction(errorResponse.statusCode, e.message, noTip),
          false,
          errorResponse.statusCode);
    }

    Response response;
    try {
      response =
          await _dio.request(_getAPi(apiNum), data: body, options: option);
    } on DioError catch (e) {
      return resultError(e);
    }
    if (response.data is DioError) {
      return resultError(response.data);
    }
    return response.data;
  }

  //业务层处理2
  resultGateway2(res, [showErr = true]) {
    if (res == null || res.data == null || res.data.length == null) {
      //网络层报错
      NavigatorUtils.showToast(Config.ERR_MSG1);
      return null;
    }
    try {
      GatewayBaseModel resultModel = GatewayBaseModel.fromJson(res.data);
      if (!resultModel.success) {
        //网关层报错
        switch (resultModel.error.code) {
          case -32602: //入参错误
            NavigatorUtils.showToast("入参错误");
            break;
          case -32603: //内部业务服务错误
            NavigatorUtils.showToast("内部业务服务错误");
            break;
          case -32604: //内部业务服务超时
            NavigatorUtils.showToast("内部业务服务超时");
            break;
          case -32605: //内部服务找不到
            NavigatorUtils.showToast("内部服务找不到");
            break;
          case -32606: //服务接口描述未找到
            NavigatorUtils.showToast("服务接口描述未找到");
            break;
          case -32700: //参数解析错误
            NavigatorUtils.showToast("参数解析错误");
            break;
          case -32000: //网关系统错误
            NavigatorUtils.showToast("网关系统错误");
            break;
          case -32001: //未登录
            appInitUtils.clearUserData();
            NavigatorUtils.goLogin(AppInitUtils.appContext);
            break;
          case -32002: //token失效
            appInitUtils.clearUserData();
            NavigatorUtils.goLogin(AppInitUtils.appContext);
            break;
          case -32011:
            NavigatorUtils.showToast("行为验证错误");
            break;
          case -34020:
            NavigatorUtils.showToast("短信提供商短信发送错误");
            break;
          case -34021:
            NavigatorUtils.showToast("手机号发送验证码超过上限");
            break;
          case -34031:
            NavigatorUtils.showToast("安全检查失败");
            break;
          default:
            if (showErr) {
              NavigatorUtils.showToast(Config.ERR_MSG1);
            }
            break;
        }

        return null;
      }
      if (!resultModel.result.success && showErr) {
        //业务层报错
        NavigatorUtils.showToast("${resultModel.result.error.message}");
        if (resultModel.result.error.code == -32602) {
          return true;
        }

        return null;
      }
      var result = resultModel.result.result;
      return result;
    } catch (e) {
      return null;
    }
  }

  //业务层处理1
  resultGateway(res) {
    if (res == null || res.data == null || res.data.length == null) {
      //网络层报错
      NavigatorUtils.showToast(Config.ERR_MSG1);
      return null;
    }
    GatewayBaseModel resultModel = GatewayBaseModel.fromJson(res.data);
    if (!resultModel.success) {
      //网关层报错
      switch (resultModel.error.code) {
        case -32602: //入参错误
          NavigatorUtils.showToast("入参错误");
          break;
        case -32603: //内部业务服务错误
          NavigatorUtils.showToast("内部业务服务错误");
          break;
        case -32604: //内部业务服务超时
          NavigatorUtils.showToast("内部业务服务超时");
          break;
        case -32605: //内部服务找不到
          NavigatorUtils.showToast("内部服务找不到");
          break;
        case -32606: //服务接口描述未找到
          NavigatorUtils.showToast("服务接口描述未找到");
          break;
        case -32700: //参数解析错误
          NavigatorUtils.showToast("参数解析错误");
          break;
        case -32000: //网关系统错误
          NavigatorUtils.showToast("网关系统错误");
          break;
        case -32001: //未登录
          appInitUtils.clearUserData();
          NavigatorUtils.goLogin(AppInitUtils.appContext);
          break;
        case -32002: //token失效
          appInitUtils.clearUserData();
          NavigatorUtils.goLogin(AppInitUtils.appContext);
          break;
        case -32011:
          NavigatorUtils.showToast("行为验证错误");
          break;
        case -34020:
          NavigatorUtils.showToast("短信提供商短信发送错误");
          break;
        case -34021:
          NavigatorUtils.showToast("手机号发送验证码超过上限");
          break;
        case -34031:
          NavigatorUtils.showToast("安全检查失败");
          break;
        default:
          NavigatorUtils.showToast(Config.ERR_MSG1);
          break;
      }
      return null;
    }
    var result = resultModel.result;
    return result;
  }

  _getAPi(apiNum) {
    switch (apiNum) {
      case Config.KEY_API_HOST_RELEASE:
        return Address.ROOT_GATEWAY_RELEASE;
      case Config.KEY_API_HOST_PRE:
        return Address.ROOT_GATEWAY_PRE;
      case Config.KEY_API_HOST_SIT:
        return Address.ROOT_GATEWAY_SIT;
      case Config.KEY_API_HOST_TEST:
        return Address.ROOT_GATEWAY_TEST;
      case Config.KEY_API_HOST_DEV:
        return Address.ROOT_GATEWAY_DEV;
      default:
        return Address.ROOT_GATEWAY_RELEASE;
    }
  }

  static hostOfResource(apiNum) {
    switch (apiNum) {
      case Config.KEY_API_HOST_RELEASE:
        return Address.ROOT_RESOURCE_RELEASE;
      case Config.KEY_API_HOST_PRE:
        return Address.ROOT_RESOURCE_PRE;
      case Config.KEY_API_HOST_SIT:
        return Address.ROOT_RESOURCE_SIT;
      case Config.KEY_API_HOST_TEST:
        return Address.ROOT_RESOURCE_TEST;
      case Config.KEY_API_HOST_DEV:
        return Address.ROOT_RESOURCE_DEV;
      default:
        return Address.ROOT_RESOURCE_RELEASE;
    }
  }
}

final HttpManager httpManager = new HttpManager();
