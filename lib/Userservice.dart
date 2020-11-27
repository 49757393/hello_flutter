
import 'Storage.dart';
import 'dart:convert';

class UserService {
  //获取用户信息
  static getUserInfo () async {
    String username;
    try {
      //从登录后存入storage中的信息获取用户信息
       username = json.decode(await Storage.getString("userInfo")).toString();
      
    } catch (e) {
    }
    return username;
  }
}