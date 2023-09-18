import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pet_services_app/handlers/qr_code_scanner/qr_scanner_view.dart';
import 'package:pet_services_app/routers/routers.dart';
import 'package:pet_services_app/services/Login/pages/login.dart';
import 'package:pet_services_app/services/myaccount/pages/account_info.dart';
import 'package:pet_services_app/services/myaccount/pages/add_new_card.dart';
import 'package:pet_services_app/services/myaccount/pages/address.dart';
import 'package:pet_services_app/services/myaccount/pages/history.dart';
import 'package:pet_services_app/services/verification_code/pages/phonenumberverfication.dart';
import 'package:pet_services_app/services/register/pages/register.dart';
import 'package:pet_services_app/services/verification_code/pages/verviy.dart';
import 'package:pet_services_app/services/home/pages/Navigation.dart';
import 'package:pet_services_app/services/home/pages/home_page.dart';
import 'package:pet_services_app/services/myaccount/pages/account.dart';
import 'package:pet_services_app/services/onboarding_screen.dart/onboarding_page.dart';
import 'package:pet_services_app/services/splash/blocs/splash_bloc.dart';
import 'package:pet_services_app/services/tips/pages/tips.dart';

import '../services/splash/pages/splash_page.dart';

const begin = Offset(0.0, 1.0);
const end = Offset.zero;
const curve = Curves.easeInOut;
var tween = Tween(begin: begin, end: end).chain(CurveTween(curve: curve));

class CustomNavigator {
  static final GlobalKey<NavigatorState> navigatorState = GlobalKey<NavigatorState>();
  static final RouteObserver<PageRoute> routeObserver = RouteObserver<PageRoute>();
  static final GlobalKey<ScaffoldMessengerState> scaffoldState = GlobalKey<ScaffoldMessengerState>();

  static _pageRoute(Widget screen) => PageRouteBuilder(
        pageBuilder: (context, animation, secondaryAnimation) => screen,
        transitionsBuilder: (context, animation, secondaryAnimation, child) {
          return SlideTransition(
            position: animation.drive(tween),
            child: child,
          );
        },
      );

  static Route<dynamic> onCreateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.login:
        return _pageRoute( LoginScreen());
      case Routes.splash:
        return _pageRoute(const SplashPage());
      case Routes.qrScannerCode:
        return _pageRoute(const QrCodeScannerView());
      case Routes.home:
        return _pageRoute( HomePage());
      case Routes.onboarding:
       return _pageRoute( OnboardingScreen());
      case Routes.register:
       return _pageRoute( RegisterScreen());
      case Routes.verfication:
       return _pageRoute( VerifyPhoneScreen());
      case Routes.phone:
       return _pageRoute( phone());
      case Routes.Navigation:
       return _pageRoute( NavigationScreen());
      case Routes.Tips:
       return _pageRoute( TipsScreen());
      case Routes.account:
       return _pageRoute( AccountScreen());
      case Routes.accountInfo:
       return _pageRoute( AccountInfo());
      case Routes.addnewpaymentCard:
       return _pageRoute( AddNewCard());
      case Routes.address:
       return _pageRoute( Address());
      case Routes.history:
       return _pageRoute( History());

    }
    return MaterialPageRoute(builder: (_) => Container());
  }

  static pop({dynamic result}) {
    if (navigatorState.currentState!.canPop()) {
      navigatorState.currentState!.pop(result);
    }
  }

  static push(String routeName, {arguments, bool replace = false, bool clean = false}) {
    if (clean) {
      return navigatorState.currentState!.pushNamedAndRemoveUntil(routeName, (_) => false, arguments: arguments);
    } else if (replace) {
      return navigatorState.currentState!.pushReplacementNamed(routeName, arguments: arguments);
    } else {
      return navigatorState.currentState!.pushNamed(routeName, arguments: arguments);
    }
  }
}
