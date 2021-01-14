
import 'package:flutter_laboratory/common/net/address.dart';
import 'package:flutter_laboratory/common/net/api.dart';

import 'dao_result.dart';
import 'dart:convert';

final HttpManager httpManager = new HttpManager();

class YpDao {
  //获取版本更新数据
  static getCheckAppUpgrade() async {
    var resp =
    await httpManager.netFetchGateway(Address.getCheckAppUpgrade, {});

    var result = httpManager.resultGateway2(resp);
    if (result == null) {
      return DataResult(null, false);
    }

    return DataResult(null, true);
  }


  static getFileToken() async {
    var resp = await httpManager.netFetchGateway(Address.getFileToken, {});
    var result = httpManager.resultGateway2(resp);
    if (result == null) {
      return DataResult(null, false);
    }
    return DataResult(result, true);
  }
}