import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../core/common/widgets/CustomText.dart';
import '../../../../core/common/widgets/custom_button.dart';
import '../../../../core/utils/constants/app_colors.dart';
import '../../../../core/utils/constants/image_path.dart';
import '../../controllers/payment_controller.dart';


void showPaymentBottomSheet() {
  final PaymentController controller = Get.put(PaymentController());

  Get.bottomSheet(
    Container(
      height: 437.h,
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(45.r),
          topRight: Radius.circular(45.r),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            CustomText(
              text: "Payment Method",
              fontSize: 24.sp,
              fontWeight: FontWeight.w600,
              color: AppColors.primary,
            ),
            SizedBox(height: 40.h),
            // Google Pay Option
            Obx(() => _paymentOption(
              index: 0,
              imagePath: ImagePath.googlePlay,
              title: "Google Pay",
              controller: controller,
            )),
            SizedBox(height: 14.h),
            // Another Option
            Obx(() => _paymentOption(
              index: 1,
              imagePath: ImagePath.googlePlay, // replace with another image if needed
              title: "Other Pay",
              controller: controller,
            )),
            Spacer(),
            CustomButton(
              text: "Pay now",
              onTap: () {
                print("Selected Method: ${controller.selectedMethod.value}");
                Get.back();
              },
            ),
          ],
        ),
      ),
    ),
    isScrollControlled: true,
    backgroundColor: Colors.transparent,
  );
}

Widget _paymentOption({
  required int index,
  required String imagePath,
  required String title,
  required PaymentController controller,
}) {
  bool isSelected = controller.selectedMethod.value == index;

  return GestureDetector(
    onTap: () => controller.selectMethod(index),
    child: Container(
      decoration: BoxDecoration(
        color: isSelected
            ? AppColors.primary.withOpacity(0.3)
            : AppColors.secondary,
        borderRadius: BorderRadius.circular(15.r),
        border: isSelected
            ? Border.all(color: AppColors.primary, width: 1)
            : null,
      ),
      child: Padding(
        padding: const EdgeInsets.all(14.0),
        child: Row(
          children: [
            Image.asset(imagePath, height: 27.h, width: 40.w),
            SizedBox(width: 10.w),
            CustomText(
              text: title,
              fontWeight: FontWeight.w400,
              fontSize: 16.sp,
            ),
            Spacer(),
            Container(
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(
                    color: AppColors.primary, width: 2),
              ),
              child: Padding(
                padding: const EdgeInsets.all(2.0),
                child: Container(
                  height: 8.h,
                  width: 8.w,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: isSelected
                        ? AppColors.primary
                        : Colors.transparent,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    ),
  );
}
