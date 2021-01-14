import 'package:flutter_laboratory/common/config/config.dart';

import 'local_storage.dart';


///Future方法使用前前面记得加 await
class UserUtil {

  static Future<String> getUserId() async {
    return await LocalStorage.get(Config.USER_ID) ?? "";
  }

  static Future<String> getDeviceId() async {
    return await LocalStorage.get(Config.DEVICE_ID) ?? "";
  }

  static Future<String> getCityCode() async {
    return await LocalStorage.get(Config.USER_CITY_CODE) ?? "";
  }

  static Future<String> getShopId() async {
    return await LocalStorage.get(Config.USER_SHOP_ID) ?? "";
  }

}
