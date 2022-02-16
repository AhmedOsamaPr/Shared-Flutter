import 'package:flutter/material.dart';


class WaslaNavigation {
  WaslaNavigation();

  WaslaNavigation.clearStack({String? until}) {
    _clearStack = true;
    _until = until;
  }

  String? _until;
  bool _clearStack = false;

  /// routes names
  // static const String splash = '/splash';
  // static const String onBoarding = '/on-boarding';
  // static const String landing = '/landing';
  // static const String registration = '/registration';
  // static const String login = '/login';
  // static const String home = '/home';
  // static const String wallet = '/wallet';

  /// routes MAP
  // static Map<String, WidgetBuilder> routes = {
  //   splash: (context) => SplashView(),
  //   onBoarding: (context) => OnBoardingView(),
  //   landing: (context) => LandingPageView(),
  //   registration: (context) => RegistrationViewGetX(),
  //   login: (context) => LoginView(),
  //   home: (context) => HomeView(),
  //   wallet: (context) => Wallet(),
  // };

  /// Navigation methods
  // void toOnBoarding(BuildContext context) {
  //   _navigate(context, onBoarding, null);
  // }
  //
  // void toLandingPage(BuildContext context) {
  //   _navigate(context, landing, null);
  // }
  //
  // void toRegistration(BuildContext context) {
  //   _navigate(context, registration, null);
  // }
  //
  // void toLogin(BuildContext context) {
  //   _navigate(context, login, null);
  // }
  //
  // void toHome(BuildContext context) {
  //   _navigate(context, home, null);
  // }
  //
  // void toWallet(BuildContext context) {
  //   _navigate(context, wallet, null);
  // }

  void pop(BuildContext context) {
    Navigator.pop(context);
  }

  void _navigate(BuildContext context, String to, Object? arguments) {
    if (_clearStack) {
      _navigateAndClearStack(context, to, arguments);
    } else {
      Navigator.pushNamed(context, to, arguments: arguments);
    }
  }

  void _navigateAndClearStack(
      BuildContext context, String to, Object? arguments) {
    Navigator.pushNamedAndRemoveUntil(context, to, (Route<dynamic> route) {
      if (_until != null) {
        return route.settings.name == _until!;
      } else {
        return false;
      }
    }, arguments: arguments);
  }
}
