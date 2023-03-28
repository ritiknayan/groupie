import 'package:shared_preferences/shared_preferences.dart';

class HelperFunctions {
  // keys
  static String userloggedInKey = "LOGGEDINKEY";
  static String userNameKey = "USERNAMEKEY";
  static String userEmailKey = "USEREMAILKEY";

  // saving the data to SF
  static Future<bool?> saveUserLoggedInStatus(bool isUserLoggedIn) async {
    SharedPreferences sf = await SharedPreferences.getInstance();

    return await  sf.setBool(userloggedInKey, isUserLoggedIn);
  }

  static Future<bool?> saveUserNameSF(String userName) async {
    SharedPreferences sf = await SharedPreferences.getInstance();

    return await sf.setString(userNameKey, userName);
  }

  static Future<bool?> saveUserEmailSF(String email) async {
    SharedPreferences sf = await SharedPreferences.getInstance();

    return await sf.setString(userEmailKey, email);
  }

  // getting the data  from SF
  static Future<bool?> getUserLoggedInStatus() async {
    SharedPreferences sf = await SharedPreferences.getInstance();

    return sf.getBool(userloggedInKey);
  }

  static Future<String?> getUserEmailFromSF() async {
    SharedPreferences sf = await SharedPreferences.getInstance();

    return sf.getString(userEmailKey);
  }

  static Future<String?> getUserNameFromSF() async {
    SharedPreferences sf = await SharedPreferences.getInstance();

    return sf.getString(userNameKey);
  }
}
