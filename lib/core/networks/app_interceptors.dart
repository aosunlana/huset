// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:async';

import 'package:dio/dio.dart';
import 'package:huset/core/helpers/logger.dart';

class AppInterceptor extends Interceptor {
  Dio dio;
  // UserRepository userRepository;
  AppInterceptor({
    required this.dio,
    // required this.userRepository,
  });

  @override
  FutureOr<dynamic> onRequest(
      RequestOptions options, RequestInterceptorHandler handler) {
    handler.next(options);
    try {
      // final token = userRepository.getToken();
      debugLog('[URL] ${options.uri}');
      debugLog('[QUERY PARAMETERS] ${options.queryParameters}');

      if (options.data != null) {
        debugLog('[BODY] ${options.data}');
      }
      // if (token.isNotEmpty) {
      //   options.headers['Authorization'] = 'Bearer $token';
      // debugLog('[BODY] $token');
      // }
    } catch (e) {
      debugLog(e);
    }

    return options;
  }

  @override
  FutureOr<dynamic> onResponse(
      Response response, ResponseInterceptorHandler handler) {
    debugLog('Response: ${response.data}');
    handler.next(response);
    return response;
  }
}
