import 'package:huset/core/responses/response_status.dart';
import 'package:huset/features/onboarding/data/models/authentication_response.dart';
import 'package:huset/features/onboarding/domain/entities/request/authentication_request.dart';
import 'package:huset/features/onboarding/domain/repositories/i_authentication_repository.dart';
import 'package:huset/features/onboarding/domain/usecases/usecase.dart';
import 'package:injectable/injectable.dart';

@Injectable()
class LoginUseCase
    implements
        UseCase<ResponseStatus<AuthenticationResponse>, AuthenticationRequest> {
  final IAuthenticationRepository authenticationRepository;

  LoginUseCase({required this.authenticationRepository});

  @override
  Future<ResponseStatus<AuthenticationResponse>> call(
      {required AuthenticationRequest params}) {
    return authenticationRepository.login(params);
  }
}
