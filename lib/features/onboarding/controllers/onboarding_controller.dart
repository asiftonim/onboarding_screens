import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../core/utils/constants/image_path.dart';
import '../../../routes/app_routes.dart';

class OnboardingController extends GetxController {
  PageController pageController = PageController();
  var currentPage = 0.obs;

  // Sample data
  final List<Map<String, String>> pages = [
    {
      "image": ImagePath.onboardingPage1Image,
      "title": "Smart Shopping",
      "subtitle": "Shop smarter, save time, and discover the best deals."
    },
    {
      "image": ImagePath.onboardingPage1Image,
      "title": "For Every Need",
      "subtitle": "One destination where all your needs come together - simple, fast, and easy."
    },
    {
      "image": ImagePath.onboardingPage1Image,
      "title": "Fast Delivery",
      "subtitle": "Fast, reliable delivery of all your favorites,straight to your doorstep whenever you need."
    },
  ];

  void nextPage() {
    if (currentPage.value < pages.length - 1) {
      pageController.nextPage(
        duration: const Duration(milliseconds: 300),
        curve: Curves.ease,
      );
    } else {
      // ✅ Last page -> navigate to Login Screen
      Get.offNamed(AppRoute.logingScreens); // '/login' route তোমার Login Screen-এর জন্য define করতে হবে
    }
  }


  void onPageChanged(int index) {
    currentPage.value = index;
  }
}
