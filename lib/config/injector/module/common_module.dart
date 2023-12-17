import 'package:dio/dio.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:huset/core/networks/app_interceptors.dart';
import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';

@module
abstract class CommonModule {
  @preResolve // if you need to pre resolve the value
  Future<SharedPreferences> get prefs => SharedPreferences.getInstance();

  @injectable
  FlutterSecureStorage get flutterSecureStorage => const FlutterSecureStorage();

  @singleton
  Dio dio() {
    Dio dio = Dio();
    dio.options.baseUrl = "http://restapi.adequateshop.com/";
    dio.options.headers = {
      'Content-Type': 'application/json',
      'accept': 'application/json',
    };
    dio.interceptors.add(AppInterceptor(dio: dio));
    return dio;
  }
}
