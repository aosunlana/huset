import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:huset/config/styles/text_styles/app_text_styles.dart';

@RoutePage()
class HomePage extends StatelessWidget {
  static const String path = '/homepage';
  final String? name;
  const HomePage({super.key, this.name});

  @override
  Widget build(BuildContext context) {
    final fullName = name ?? "John Smith";
    return Scaffold(
      body: Center(
        child: Text(
          "Hello $fullName, Welcome to Utopia Huset",
          style: AppTextStyles.h6(),
        ),
      ),
    );
  }
}
