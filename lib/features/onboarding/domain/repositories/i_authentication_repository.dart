import 'package:huset/core/responses/response_status.dart';
import 'package:huset/features/onboarding/data/models/authentication_response.dart';
import 'package:huset/features/onboarding/domain/entities/request/authentication_request.dart';

abstract class IAuthenticationRepository {
  Future<ResponseStatus<AuthenticationResponse>> login(
      AuthenticationRequest authenticationRequest);
}
