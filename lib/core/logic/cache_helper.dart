import 'package:shared_preferences/shared_preferences.dart';

class CacheHelper {
  static late SharedPreferences _prefs;

  static Future<void> init() async {
    _prefs = await SharedPreferences.getInstance();
  }

  static Future<void> setNotFirstTime() async {
    bool isSuccess = await _prefs.setBool("isFirstTime", false);
    print(isSuccess ? "Success" : "Failed");
  }

  static String get name {
    return _prefs.getString("name") ?? "";
  }

  static int get age {
    return _prefs.getInt("age") ?? 0;
  }

  static bool get isFirstTime {
    return _prefs.getBool("isFirstTime") ?? true;
  }

  static void logout(){
    _prefs.clear();
  }

}
