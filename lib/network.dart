import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class NetworkCalls {
  Dio dio = Dio();
  static String baseURL = 'http://192.168.29.40:3000/api/v1';
  static String getOTPapi = '$baseURL/login/getOtp';
  static String verifyOTPapi = '$baseURL/login/verifyotp';

  Future<Response?> getOtp({String? mobile}) async {
    try {
      Response response = await dio.post(getOTPapi, data: {'mobile': mobile});
      return response;
    } catch (e) {
      print(e.toString());
      return null;
    }
  }

  Future<Response?> verifyOtp({String? mobile, String? otp}) async {
    try {
      Response response =
          await dio.post(verifyOTPapi, data: {'mobile': mobile, 'otp': otp});
      return response;
    } catch (e) {
      print(e.toString());
      return null;
    }
  }

  Future<Response?> getProfile() async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    Options options = Options(headers: {
      'Authorization': 'Bearer ${sharedPreferences.getString('token')}'
    });
    try {
      Response response = await dio.get('$baseURL/profile', options: options);
      return response;
    } catch (e) {
      print(e.toString());
      return null;
    }
  }

  Future<Response?> updateProfile({String?name,String? email })async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    Options options = Options(headers: {
      'Authorization': 'Bearer ${sharedPreferences.getString('token')}'
    });
    try {
      Response response =
      await dio.put('$baseURL/profile', options: options, data: {
        'name': name,
        'email': email,
      });
      return response;
    } catch (e) {
      print(e.toString());
      return null;
    }
  }
}
