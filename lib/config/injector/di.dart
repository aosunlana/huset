import 'package:get_it/get_it.dart';
import 'package:huset/config/injector/di.config.dart';
import 'package:injectable/injectable.dart';

@InjectableInit()
class DI {
  DI._();

  final GetIt _getIt = GetIt.I;

  static final DI instance = DI._();

  Future<void> setupInjection() async => _getIt.init();

  // Use this to get registered instance
  static T resolve<T extends Object>() => instance._getIt.get();
}
