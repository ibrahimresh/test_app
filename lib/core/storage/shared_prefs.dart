import 'dart:convert';

import 'package:shared_preferences/shared_preferences.dart';

class SharedPrefs {
  static late SharedPreferences _prefs;

  static Future<void> init() async {
    _prefs = await SharedPreferences.getInstance();
  }

  read(String key) async {
    if (_prefs.getString(key) == null) {
      return null;
    }
    return json.decode(_prefs.getString(key)!);
  }

  save(String key, value) async {
    _prefs.setString(key, json.encode(value));
  }

  saveListString(String key, List<String> value) async {
    _prefs.setStringList(key, value);
  }

  readListString(String key) async {
    return _prefs.getStringList(key);
  }

  saveBool(String key, bool value) async {
    _prefs.setBool(key, value);
  }

  saveString(String key, String value) async {
    _prefs.setString(key, value);
  }

  readString({required String key, String? defaultValue = ""}) async {
    return _prefs.getString(key) ?? defaultValue;
  }

  readBool(String key, {bool defaultValue = true}) async {
    return _prefs.getBool(key) ?? defaultValue;
  }

  remove(String key) async {
    _prefs.remove(key);
  }
}
