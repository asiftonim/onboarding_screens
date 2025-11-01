import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../core/common/widgets/CustomText.dart';
import '../../../../core/common/widgets/custom_button.dart';
import '../../../../core/utils/constants/app_colors.dart';
import '../../../../core/utils/constants/image_path.dart';

void showPaymentSuccessfulBottomSheet({VoidCallback? onPayNow}) {
  Get.bottomSheet(
    Container(
      height: 417.h,
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
            Image.asset(
              ImagePath.paymentSuccess,
              height: 110.h,
              width: 110.w,
            ),
            SizedBox(height: 16.h),
            CustomText(
              text: "Payment was\nSuccessful",
              textAlign: TextAlign.center,
              fontSize: 24.sp,
              fontWeight: FontWeight.w600,
            ),
            SizedBox(height: 12.h),
            CustomText(
              text: "Your payment has been successfully\nprocessed.",
              textAlign: TextAlign.center,
              fontSize: 12.sp,
              fontWeight: FontWeight.w400,
              color: AppColors.textGrey,
            ),
            Spacer(),
            CustomButton(
              text: "Done",
              onTap: onPayNow ??
                      () {
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
