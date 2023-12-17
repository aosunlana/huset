// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:huset/config/injector/di.dart';
import 'package:huset/features/onboarding/presentation/bloc/authentication_login_cubit.dart';

import 'package:huset/main_app_page.dart';

class MainApp extends StatelessWidget {
  final bool isFirstTimeOpened;
  final bool isSessionActive;
  const MainApp({
    Key? key,
    required this.isSessionActive,
    required this.isFirstTimeOpened,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (_) => DI.resolve<AuthenticationLoginCubit>(),
        )
      ],
      child: MainAppPage(
        isFirstTimeOpened: isFirstTimeOpened,
        isSessionActive: isSessionActive,
      ),
    );
  }
}
