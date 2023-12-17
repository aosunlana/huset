import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:huset/core/errors/app_error.dart';
import 'package:huset/core/responses/response_status.dart';
import 'package:huset/features/onboarding/data/models/authentication_response.dart';
import 'package:huset/features/onboarding/data/repositories/authentication_repository.dart';
import 'package:huset/features/onboarding/domain/entities/request/authentication_request.dart';
import 'package:huset/features/onboarding/domain/usecases/login_usecase.dart';
import 'package:injectable/injectable.dart';

part 'authentication_login_cubit.freezed.dart';
part 'authentication_login_state.dart';

@injectable
class AuthenticationLoginCubit extends Cubit<AuthenticationLoginState> {
  final LoginUseCase loginUseCase;

  AuthenticationLoginCubit({
    required this.loginUseCase,
  }) : super(const AuthenticationLoginState.initial());

  Future<void> login(AuthenticationRequest request) async {
    emit(
      const AuthenticationLoginState.loading(),
    );

    final ResponseStatus<AuthenticationResponse> responseStatus =
        await loginUseCase.call(params: request);
    responseStatus.result(
      onSuccess: (response) {
        emit(
          AuthenticationLoginState.success(
            name: response.name.toString(),
          ),
        );
      },
      onError: (error) => emit(
        AuthenticationLoginState.error(error),
      ),
    );
  }
}
