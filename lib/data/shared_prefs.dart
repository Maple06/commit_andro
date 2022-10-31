import 'package:shared_preferences/shared_preferences.dart';

class SharedPrefs {
  static Future<SharedPreferences> getPrefs() async => await SharedPreferences.getInstance();

  static Future setInt(String key, int value) async => (await getPrefs()).setInt(key, value);
  static Future<int?> getInt(String key) async => (await getPrefs()).getInt(key);

  static Future remove(String key) async => (await getPrefs()).remove(key);

  static Future setString(String key, String value) async => (await getPrefs()).setString(key, value);
  static Future<String?> getString(String key) async => (await getPrefs()).getString(key);
}