import 'package:dio/dio.dart';
import 'package:huset/core/responses/base_response.dart';
import 'package:huset/features/onboarding/data/models/authentication_response.dart';
import 'package:huset/features/onboarding/domain/entities/request/authentication_request.dart';
import 'package:injectable/injectable.dart';
import 'package:retrofit/http.dart';

part 'rest_client.g.dart';

@RestApi()
@singleton
abstract class RestClient {
  @factoryMethod
  factory RestClient(Dio dio) = _RestClient;

  @POST("api/authaccount/login")
  Future<BaseResponse<AuthenticationResponse>> authenticateLogin(
      {@Body() required AuthenticationRequest authenticationRequest});
}
