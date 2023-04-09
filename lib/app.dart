import 'package:flutter/material.dart';
import 'package:one_context/one_context.dart';
import 'package:space_fm/helpers/sf_focus_helper.dart';
import 'package:space_fm/screens/login.dart';
import 'package:space_fm/screens/sign_up.dart';
import 'package:space_fm/screens/splash_screen.dart';
import 'package:space_fm/values/styles.dart';
import 'package:space_fm/widgets/protected_gesture.dart';

class SpaceFmApp extends StatelessWidget {
  final List<NavigatorObserver> navigatorObservers;
  final String? entryPointRouteName;

  const SpaceFmApp({
    super.key,
    this.navigatorObservers = const <NavigatorObserver>[],
    this.entryPointRouteName,
  });

  @override
  Widget build(BuildContext context) {
    return ProtectedGestureDetector.Create(
      onTap: () => FocusHelper.unfocus(),
      child: MaterialApp(
        initialRoute: entryPointRouteName ?? LoginScreen.routeName,
        theme: Styles.themeData,
        navigatorKey: OneContext().key,
        builder: OneContext().builder,
        routes: {
          SplashScreen.routeName: (context) => const SplashScreen(),
          LoginScreen.routeName: (context) => const LoginScreen(),
          SignUpScreen.routeName: (context) => const SignUpScreen(),
        },
      ),
    );
  }
}
