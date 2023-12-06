
import 'dart:async';
import 'dart:io';

import 'package:passtich/methods/cq_client.dart';

class Fun {

  Fun();


  Future<int> Add<T>(String url, String userName, String password) async {
    try {
      /*String url = "";
    String baseimage2 = "";
    String baseimage3 = "";*/

      // notifyListeners();

      var data = { 'url': url, 'username': userName, 'password': password};

      var responseBody = await CQClient().command('umm', 'add.php', data);

      if (responseBody['status'].toString() == 'success') {
        //_userModel = UserModel.fromJson(responseBody);
        //nameM = _userModel.name;
        //phoneM = _userModel.phone;

        return 2; //تعني تم التسجيل بنجاح

      } else {
        return 0; // تعني بيانات المستخدم موجوده
      }
    } on TimeoutException catch (e) {
      print('Timeout Error: $e');

      return 1;
    } on SocketException catch (e) {
      print('Socket Error: $e');

      return 1;
    } on Error catch (e) {
      print('General Error: $e');
      return 1;
    }
  }
  Future<String> getPass<T>(String url, String userName) async {
    try {
      /*String url = "";
    String baseimage2 = "";
    String baseimage3 = "";*/

      // notifyListeners();

      var data = { 'url': url, 'username': userName};

      var responseBody = await CQClient().command('umm', 'load.php', data);

      if (responseBody['status'].toString() == 'success') {
        //_userModel = UserModel.fromJson(responseBody);
        //nameM = _userModel.name;
        //phoneM = _userModel.phone;
      String pass =  responseBody['password'].toString();
        return pass; //تعني تم التسجيل بنجاح

      } else {
        return "error"; // تعني بيانات المستخدم موجوده
      }
    } on TimeoutException catch (e) {
      print('Timeout Error: $e');

      return "error";
    } on SocketException catch (e) {
      print('Socket Error: $e');

      return "error";
    } on Error catch (e) {
      print('General Error: $e');
      return "error";
    }
  }

  Future<int> Delete<T>(String url, String userName) async {
    try {
      /*String url = "";
    String baseimage2 = "";
    String baseimage3 = "";*/

      // notifyListeners();

      var data = { 'url': url, 'username': userName};

      var responseBody = await CQClient().command('umm', 'delete.php', data);

      if (responseBody['status'].toString() == 'success') {
        //_userModel = UserModel.fromJson(responseBody);
        //nameM = _userModel.name;
        //phoneM = _userModel.phone;

        return 2; //تعني تم التسجيل بنجاح

      } else {
        return 0; // تعني بيانات المستخدم موجوده
      }
    } on TimeoutException catch (e) {
      print('Timeout Error: $e');

      return 1;
    } on SocketException catch (e) {
      print('Socket Error: $e');

      return 1;
    } on Error catch (e) {
      print('General Error: $e');
      return 1;
    }
  }
}