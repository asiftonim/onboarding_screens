import 'package:get/get.dart';

class PaymentController extends GetxController {
  var selectedMethod = 0.obs; // 0 = Google Pay, 1 = Another Option

  void selectMethod(int index) {
    selectedMethod.value = index;
  }
}
