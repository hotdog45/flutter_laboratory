import 'package:flutter/foundation.dart';

class CommonUtil {

  /// 判断是否为debug
  static bool get isDebug {
    return kDebugMode;
  }

  /// 价格转String
  static String getPrice(int price) {
    if (price % 100 == 0) {
      return (price / 100.00).toStringAsFixed(0);
    } else if (price % 10 == 0) {
      return (price / 100.00).toStringAsFixed(1);
    }
    return (price / 100.00).toStringAsFixed(2);
  }

  ///价格转string 带小数点
  static String getPriceDot(int price) {
    return (price / 100.00).toStringAsFixed(2);
  }

  ///字符串判空
  static bool textIsNotEmpty(String text) {
    return text != null && text.isNotEmpty;
  }

  ///字符串判空
  static bool textIsEmpty(String text) {
    return text == null || text.isEmpty;
  }

  ///时间戳转时间 格式为  x天 xx:xx:xx
  static String formatDate(int timestamp) {
    int day = 0;
    if (timestamp > 86400000) {
      day = (timestamp ~/ (1000 * 60 * 60 * 24));
    }
    int hour = ((timestamp % (1000 * 60 * 60 * 24)) ~/ (1000 * 60 * 60));
    int minute = ((timestamp % (1000 * 60 * 60)) ~/ (1000 * 60));
    int second =((timestamp % (1000 * 60)) ~/ 1000);

    String hourString = hour.toString();
    String minuteString = minute.toString();
    String secondString = second.toString();
    if (hour < 9) {
      hourString = "0$hourString";
    }
    if (minute < 9) {
      minuteString = "0$minuteString";
    }
    if (second < 9) {
      secondString = "0$secondString";
    }
    return day > 0 ? "$day天 $hourString:$minuteString:$secondString" : "$hourString:$minuteString:$secondString";
  }

}