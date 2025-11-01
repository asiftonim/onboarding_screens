import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../utils/constants/app_colors.dart';
import 'CustomText.dart';
import 'custom_button.dart';

class TwoButtonDialogBox extends StatelessWidget {
  final String imagePath;
  final String title;
  final String subtitle;
  final String cancelButtonText;
  final String confirmButtonText;
  final VoidCallback? onCancel;
  final VoidCallback? onConfirm;

  const TwoButtonDialogBox({
    Key? key,
    required this.imagePath,
    required this.title,
    required this.subtitle,
    required this.cancelButtonText,
    required this.confirmButtonText,
    this.onCancel,
    this.onConfirm,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(32.r),
      ),
      backgroundColor: Colors.transparent,
      child: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(32.r),
          color: Colors.white,
        ),
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Image.asset(
                imagePath,
                height: 120.h,
                width: 120.w,
              ),
              SizedBox(height: 16.h),
              CustomText(
                text: title,
                fontWeight: FontWeight.w600,
                fontSize: 24.sp,
              ),
              SizedBox(height: 12.h),
              CustomText(
                text: subtitle,
                textAlign: TextAlign.center,
                fontWeight: FontWeight.w400,
                fontSize: 14.sp,
                color: AppColors.textGrey,
              ),
              SizedBox(height: 24.h),
              Row(
                children: [
                  Expanded(
                    child: CustomButton(
                      text: cancelButtonText,
                      onTap: onCancel ?? () => Navigator.pop(context),
                      borderColor: AppColors.primary,
                      color: Colors.white,
                      textColor: AppColors.primary,
                    ),
                  ),
                  SizedBox(width: 12.w),
                  Expanded(
                    child: CustomButton(
                      text: confirmButtonText,
                      onTap: onConfirm ?? () => Navigator.pop(context),
                      textColor: Colors.white,
                      color: AppColors.primary,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
