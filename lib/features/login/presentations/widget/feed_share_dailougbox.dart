import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../core/common/widgets/CustomText.dart';
import '../../../../core/common/widgets/custom_button.dart';
import '../../../../core/utils/constants/app_colors.dart';
import '../../../../core/utils/constants/image_path.dart';

Future<void> showFeedShareDialog(BuildContext context) {
  return showDialog(
    context: context,
    builder: (context) {
      return Dialog(
        backgroundColor: Colors.transparent,
        insetPadding: EdgeInsets.symmetric(horizontal: 16),
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16.r),
            color: Colors.white,
          ),
          child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(6.r),
                    color: AppColors.secondary,
                  ),
                  child: Center(
                    child: Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Image(
                        image: AssetImage(ImagePath.shareIcon),
                        height: 40.h,
                        width: 40.w,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 40.h),
                CustomText(
                  text: "Share your Link",
                  fontWeight: FontWeight.w700,
                  fontSize: 20.sp,
                ),
                SizedBox(height: 16.h),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Image(
                      image: AssetImage(ImagePath.facebookIcon),
                      height: 32.h,
                      width: 32.w,
                    ),
                    SizedBox(width: 24.h),
                    Image(
                      image: AssetImage(ImagePath.twiterIcon),
                      height: 32.h,
                      width: 32.w,
                    ),
                  ],
                ),
                SizedBox(height: 24.h),
                CustomText(
                  text: "Share your URL",
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w400,
                ),
                SizedBox(height: 8.h),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(99.r),
                    color: AppColors.secondary,
                  ),
                  child: Padding(
                    padding: EdgeInsets.symmetric(
                        vertical: 6.0.h, horizontal: 12.w),
                    child: Row(
                      children: [
                        CustomText(text: "htttp//012345678/84555"),
                        SizedBox(width: 24.w),
                        Expanded(
                          child: CustomButton(
                            text: "Copy",
                            onTap: () {},
                          ),
                        ),
                      ],
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

