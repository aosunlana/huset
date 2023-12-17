import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:huset/config/injector/di.dart';
import 'package:huset/config/routes/app_router.dart';
import 'package:huset/config/styles/colors/app_colors.dart';
import 'package:huset/config/styles/decorations/app_decorations.dart';
import 'package:huset/config/styles/dimensions/app_dimensions.dart';
import 'package:huset/config/styles/text_styles/app_text_styles.dart';
import 'package:huset/core/helpers/logger.dart';
import 'package:huset/core/utils/validation/validation_builder.dart';
import 'package:huset/features/common_widgets/adaptive/adaptive_button.dart';
import 'package:huset/features/common_widgets/adaptive/adaptive_text_field.dart';
import 'package:huset/features/common_widgets/unfocus_keyboard_outside.dart';
import 'package:huset/features/onboarding/domain/entities/request/authentication_request.dart';
import 'package:huset/features/onboarding/presentation/bloc/authentication_login_cubit.dart';
import 'package:huset/features/onboarding/presentation/pages/home_page.dart';
import 'package:huset/l10n/app_loc.dart';

@RoutePage()
class LoginPage extends StatefulWidget {
  static const String path = '/login-page';
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _formKey = GlobalKey<FormState>();
  bool termsAgreed = false;
  @override
  Widget build(BuildContext context) {
    final AuthenticationLoginCubit loginCubicNotWorking =
        DI.resolve<AuthenticationLoginCubit>();

    final loginCubit = BlocProvider.of<AuthenticationLoginCubit>(context);

    final emailTextController = TextEditingController();
    final passwordTextController = TextEditingController();

    // ignore: unused_local_variable
    AutovalidateMode autovalidateMode = AutovalidateMode.disabled;

    return BlocConsumer<AuthenticationLoginCubit, AuthenticationLoginState>(
      bloc: loginCubit,
      listener: (context, state) {
        state.maybeWhen(
            success: (name) {
              debugLog(name);
              return context.router.push(HomeRoute(name: name));
            },
            error: (error) {
              debugLog(error);
              return context.router.pushNamed(HomePage.path);
            },
            orElse: () => null);
      },
      builder: (context, state) {
        return UnfocusKeyboardOutside(
          child: Scaffold(
            resizeToAvoidBottomInset: true,
            appBar: AppBar(
              title: const Text(""),
            ),
            body: Padding(
              padding: AppDimensions.padding.defaultHorizontal(),
              child: SafeArea(
                child: Column(
                  children: [
                    const Spacer(flex: 3),
                    Form(
                      key: _formKey,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(AppLoc.of(context).emailTextFieldLabel),
                          SizedBox(height: AppDimensions.padding.smallValue),
                          AdaptiveTextField(
                            controller: emailTextController,
                            labelText: AppLoc.of(context).inputEmailLabel,
                            validator: ValidationBuilder().isValidEmail().build,
                          ),
                          SizedBox(height: AppDimensions.padding.bigValue),
                          Text(AppLoc.of(context).passwordTextFieldLabel),
                          SizedBox(height: AppDimensions.padding.smallValue),
                          AdaptiveTextField(
                            controller: passwordTextController,
                            labelText: AppLoc.of(context).inputPasswordLabel,
                            obscureText: true,
                            validator: ValidationBuilder().isNotBlank().build,
                          ),
                          SizedBox(height: AppDimensions.padding.bigValue),
                          ListTileTheme(
                            horizontalTitleGap: 10.0,
                            child: CheckboxListTile(
                                visualDensity:
                                    VisualDensity.adaptivePlatformDensity,
                                contentPadding: EdgeInsets.zero,
                                controlAffinity:
                                    ListTileControlAffinity.leading,
                                value: termsAgreed,
                                onChanged: (value) {
                                  setState(() {
                                    termsAgreed = value!;
                                  });
                                },
                                title: Text(
                                  AppLoc.of(context).loginConsentLabel,
                                  style: AppTextStyles.button
                                      .disabled()
                                      .copyWith(
                                          fontWeight: FontWeight.normal,
                                          fontSize: 12),
                                )),
                          ),
                        ],
                      ),
                    ),
                    const Spacer(flex: 4),
                    AdaptiveButton(
                        onPressed: () {
                          if (_formKey.currentState?.validate() ?? false) {
                            final AuthenticationRequest request =
                                AuthenticationRequest(
                              email: emailTextController.text,
                              password: int.parse(passwordTextController.text),
                            );
                            setState(() {
                              autovalidateMode = AutovalidateMode.always;
                            });
                            loginCubit.login(request);
                          }
                          // context.router.pushNamed(LoginPage.path);
                        },
                        decoration: AppDecorations.button.primary(),
                        child: Text(
                          AppLoc.of(context).signUpButtonLabel,
                          style: AppTextStyles.h6()
                              .copyWith(color: AppColors.white),
                        )),
                    const Spacer(flex: 2),
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
