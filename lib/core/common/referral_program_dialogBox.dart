import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:onboarding_screen/core/common/widgets/CustomText.dart';

import '../utils/constants/app_colors.dart';
import '../utils/constants/image_path.dart';

Future<void> showReferralProgramDialogBox(BuildContext context) {
  return showDialog(
    context: context,
    barrierDismissible: true,
    builder: (context) {
      return Dialog(
        backgroundColor: Colors.transparent,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16.r),
        ),
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16.r),
            color: AppColors.secondary,
          ),
          child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                /// Title
                CustomText(
                  text: "Referral Program",
                  fontSize: 20.sp,
                  fontWeight: FontWeight.w500,
                ),
                SizedBox(height: 5.h),

                /// Description
                CustomText(
                  textAlign: TextAlign.center,
                  text:
                  "By sharing your code with friends,\nyou both get 1 month free subscription.",
                  fontSize: 12.sp,
                  fontWeight: FontWeight.w400,
                  color: const Color(0xFF595959),
                ),
                SizedBox(height: 20.h),

                /// Referral Code Box
                Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(8.r),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CustomText(
                          text: "Your Referral Code",
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w400,
                          color: AppColors.textGrey,
                        ),
                        SizedBox(height: 8.h),
                        Container(
                          width: double.infinity,
                          decoration: BoxDecoration(
                            color: AppColors.secondary,
                            borderRadius: BorderRadius.circular(8.r),
                          ),
                          child: Padding(
                            padding: EdgeInsets.symmetric(
                                horizontal: 16.0.w, vertical: 14.h),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                CustomText(text: "FOODPP2036"),
                                GestureDetector(
                                  onTap: () {
                                    // Clipboard copy action
                                  },
                                  child: Image(
                                    image: AssetImage(ImagePath.copyIcon),
                                    height: 20.h,
                                    width: 20.w,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 8.h),

                /// Referral Status Box
                Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12.r),
                    color: Colors.white,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      children: [
                        /// Status Row
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            CustomText(
                              text: "Referral Status",
                              fontWeight: FontWeight.w400,
                              fontSize: 14.sp,
                              color: AppColors.textGrey,
                            ),
                            Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(100.r),
                                border: Border.all(
                                  color: const Color(0xFF52C41A),
                                  width: 1,
                                ),
                              ),
                              child: Padding(
                                padding: EdgeInsets.symmetric(
                                    vertical: 3.0.h, horizontal: 10.w),
                                child: CustomText(
                                  text: "You’re in a referral plan",
                                  fontSize: 10.sp,
                                  fontWeight: FontWeight.w400,
                                  color: const Color(0xFF52C41A),
                                ),
                              ),
                            )
                          ],
                        ),
                        SizedBox(height: 16.h),

                        /// Stats Row
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(4.r),
                                color: AppColors.secondary,
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(17.0),
                                child: Column(
                                  children: [
                                    CustomText(
                                      text: "30",
                                      fontSize: 20.sp,
                                      fontWeight: FontWeight.w500,
                                      color: AppColors.primary,
                                    ),
                                    CustomText(
                                      text: "Friend invited",
                                      fontSize: 14.sp,
                                      fontWeight: FontWeight.w400,
                                      color: AppColors.textGrey,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(4.r),
                                color: AppColors.secondary,
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(17.0),
                                child: Column(
                                  children: [
                                    CustomText(
                                      text: "\$120",
                                      fontSize: 20.sp,
                                      fontWeight: FontWeight.w500,
                                      color: AppColors.primary,
                                    ),
                                    CustomText(
                                      text: "Credit Earned",
                                      fontSize: 14.sp,
                                      fontWeight: FontWeight.w400,
                                      color: AppColors.textGrey,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 16.h),

                /// Close Button
                GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: AppColors.primary,
                      borderRadius: BorderRadius.circular(8.r),
                    ),
                    padding:
                    EdgeInsets.symmetric(vertical: 12.h, horizontal: 16.w),
                    child: Center(
                      child: CustomText(
                        text: "Close",
                        color: Colors.white,
                        fontWeight: FontWeight.w500,
                        fontSize: 14.sp,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      );
    },
  );
}
