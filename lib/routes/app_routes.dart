import 'package:get/get.dart';

import '../features/login/presentations/screens/loging_screens.dart';
import '../features/onboarding/presentations/screens/onboarding_screen.dart';
import '../features/practice_widgect/incoming_screen.dart';
import '../features/practice_widgect/practice_widget.dart';



class AppRoute {
  static String init = "/";
  static String onboardingScreen = "/onboardingScreen";
  static String logingScreens = "/logingScreens";
  static String practiceWidget = "/practiceWidget";
  static String bookingListScreen = "/bookingListScreen";

//page route name

  static List<GetPage> routes = [
    GetPage(name: init, page: () =>  OnboardingView()),
    GetPage(name: logingScreens, page: () =>  LogingScreens()),
    GetPage(name: practiceWidget, page: () =>  PracticeWidget()),
    GetPage(name: bookingListScreen, page: () =>  BookingListScreen()),
  ];
}