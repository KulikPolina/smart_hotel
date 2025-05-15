import 'package:flutter/services.dart';

abstract class BleService {
  Future<bool> connect(String deviceId);
  Future<void> openDoor({required bool open});
  Future<void> setLight({required bool daylight, required bool nightlight});
}

class MethodChannelBleService implements BleService {
  static const MethodChannel _channel = MethodChannel('smart_hotel/ble');

  @override
  Future<bool> connect(String deviceId) async {
    final bool result = await _channel.invokeMethod('connect', {'deviceId': deviceId});
    return result;
  }

  @override
  Future<void> openDoor({required bool open}) async {
    await _channel.invokeMethod('openDoor', {'open': open});
  }

  @override
  Future<void> setLight({required bool daylight, required bool nightlight}) async {
    await _channel.invokeMethod('setLight', {
      'daylight': daylight,
      'nightlight': nightlight,
    });
  }
}
