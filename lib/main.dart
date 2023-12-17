import 'package:flutter/material.dart';
import 'package:huset/main_app.dart';

import 'config/injector/di.dart';
import 'core/storages/common_storages.dart';
import 'core/storages/token_storage.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await DI.instance.setupInjection();
  final bool isFirstLaunch =
      await DI.resolve<CommonStorage>().getIsFirstLaunch();
  final bool isSessionActive = await DI.resolve<TokenStorage>().hasToken();

  runApp(
    MainApp(
      isFirstTimeOpened: isFirstLaunch,
      isSessionActive: isSessionActive,
    ),
  );
}
