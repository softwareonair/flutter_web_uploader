
import 'dart:async';

import 'package:flutter/services.dart';

class FlutterWebUploader {
  static const MethodChannel _channel = MethodChannel('flutter_web_uploader');

  static Future<String?> get platformVersion async {
    final String? version = await _channel.invokeMethod('getPlatformVersion');
    return version;
  }
}
