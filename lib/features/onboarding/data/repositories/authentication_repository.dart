import 'package:huset/core/networks/rest_client.dart';
import 'package:huset/core/responses/base_response.dart';
import 'package:huset/core/responses/response_status.dart';
import 'package:huset/features/onboarding/data/models/authentication_response.dart';
import 'package:huset/features/onboarding/domain/entities/request/authentication_request.dart';
import 'package:huset/features/onboarding/domain/repositories/i_authentication_repository.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: IAuthenticationRepository)
class AuthenticationRepository implements IAuthenticationRepository {
  final RestClient restClient;

  AuthenticationRepository({required this.restClient});
  @override
  Future<ResponseStatus<AuthenticationResponse>> login(
      AuthenticationRequest authenticationRequest) async {
    BaseResponse<AuthenticationResponse> response = await restClient
        .authenticateLogin(authenticationRequest: authenticationRequest);
    if (response.code == 0 && response.data != null) {
      return ResponseStatus<AuthenticationResponse>.success(response.data!);
    }
    return ResponseStatus<AuthenticationResponse>.error(response.message!);
  }
}
