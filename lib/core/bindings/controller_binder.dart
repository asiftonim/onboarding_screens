import 'package:get/get.dart';

import '../../features/login/controllers/login_controllers.dart';
import '../../features/onboarding/controllers/onboarding_controller.dart';

class ControllerBinder extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<OnboardingController>(() => OnboardingController(), fenix: true,);
    Get.lazyPut<LoginController>(() => LoginController(), fenix: true,);

  }
}