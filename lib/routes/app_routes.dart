import 'package:get/get.dart';

import '../features/login/presentations/screens/loging_screens.dart';
import '../features/onboarding/presentations/screens/onboarding_screen.dart';



class AppRoute {
  static String init = "/";
  static String onboardingScreen = "/onboardingScreen";
  static String logingScreens = "/logingScreens";

//page route name

  static List<GetPage> routes = [
    GetPage(name: init, page: () =>  OnboardingView()),
    GetPage(name: logingScreens, page: () =>  LogingScreens()),
  ];
}