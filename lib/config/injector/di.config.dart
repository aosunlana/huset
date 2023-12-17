// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:dio/dio.dart' as _i4;
import 'package:flutter_secure_storage/flutter_secure_storage.dart' as _i5;
import 'package:get_it/get_it.dart' as _i1;
import 'package:huset/config/injector/module/common_module.dart' as _i17;
import 'package:huset/config/routes/app_router.dart' as _i3;
import 'package:huset/core/networks/rest_client.dart' as _i6;
import 'package:huset/core/storages/common_storages.dart' as _i12;
import 'package:huset/core/storages/secure_storage.dart' as _i7;
import 'package:huset/core/storages/storage.dart' as _i9;
import 'package:huset/core/storages/token_storage.dart' as _i10;
import 'package:huset/features/onboarding/data/repositories/authentication_repository.dart'
    as _i14;
import 'package:huset/features/onboarding/domain/repositories/i_authentication_repository.dart'
    as _i13;
import 'package:huset/features/onboarding/domain/usecases/login_usecase.dart'
    as _i15;
import 'package:huset/features/onboarding/presentation/bloc/authentication_cubit.dart'
    as _i11;
import 'package:huset/features/onboarding/presentation/bloc/authentication_login_cubit.dart'
    as _i16;
import 'package:injectable/injectable.dart' as _i2;
import 'package:shared_preferences/shared_preferences.dart' as _i8;

extension GetItInjectableX on _i1.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  Future<_i1.GetIt> init({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) async {
    final gh = _i2.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    final commonModule = _$CommonModule();
    gh.singleton<_i3.AppRouter>(_i3.AppRouter());
    gh.singleton<_i4.Dio>(commonModule.dio());
    gh.factory<_i5.FlutterSecureStorage>(
        () => commonModule.flutterSecureStorage);
    gh.singleton<_i6.RestClient>(_i6.RestClient(gh<_i4.Dio>()));
    gh.factory<_i7.SecureStorage>(() => _i7.SecureStorage(
        flutterSecureStorage: gh<_i5.FlutterSecureStorage>()));
    await gh.factoryAsync<_i8.SharedPreferences>(
      () => commonModule.prefs,
      preResolve: true,
    );
    gh.factory<_i9.Storage>(
        () => _i9.Storage(sharedPreferences: gh<_i8.SharedPreferences>()));
    gh.factory<_i10.TokenStorage>(
        () => _i10.TokenStorage(secureStorage: gh<_i7.SecureStorage>()));
    gh.factory<_i11.AuthenticationCubit>(
        () => _i11.AuthenticationCubit(tokenStorage: gh<_i10.TokenStorage>()));
    gh.factory<_i12.CommonStorage>(
        () => _i12.CommonStorage(storage: gh<_i9.Storage>()));
    gh.factory<_i13.IAuthenticationRepository>(
        () => _i14.AuthenticationRepository(restClient: gh<_i6.RestClient>()));
    gh.factory<_i15.LoginUseCase>(() => _i15.LoginUseCase(
        authenticationRepository: gh<_i13.IAuthenticationRepository>()));
    gh.factory<_i16.AuthenticationLoginCubit>(() =>
        _i16.AuthenticationLoginCubit(loginUseCase: gh<_i15.LoginUseCase>()));
    return this;
  }
}

class _$CommonModule extends _i17.CommonModule {}
