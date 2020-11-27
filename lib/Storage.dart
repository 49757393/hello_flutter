import 'package:shared_preferences/shared_preferences.dart';

class Storage{
  static setString(String key,String value) async{
         final prefs = await SharedPreferences.getInstance();
         prefs.setString(key, value);
     }

  static getString(String key) async{
         final prefs = await SharedPreferences.getInstance();
         String value = prefs.getString(key);
         return value;
     }

  static void remove(key) async{
        SharedPreferences sp = await SharedPreferences.getInstance();
        sp.remove(key);
  }
}