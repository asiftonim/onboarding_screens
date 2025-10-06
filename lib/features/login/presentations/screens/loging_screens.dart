import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:onboarding_screen/core/common/widgets/CustomText.dart';
import 'package:onboarding_screen/core/common/widgets/custom_text_fields.dart';
import 'package:onboarding_screen/core/utils/constants/app_colors.dart';
import '../../../../core/common/widgets/custom_button.dart';
import '../../controllers/login_controllers.dart';

class LogingScreens extends StatelessWidget {
   LogingScreens({super.key});
   final LoginController controller = Get.find<LoginController>();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      appBar: AppBar(
        backgroundColor: AppColors.backgroundColor,
      ),
      body: Padding(
        padding:EdgeInsets.symmetric(horizontal: 24.0.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
          CustomText(text: "Log In",
            fontWeight: FontWeight.w600,
            fontSize: 24.sp,
          ),
            CustomText(text: "Log In to your account",
              fontWeight: FontWeight.w400,
              fontSize: 14.sp,
              color: AppColors.secondary,
            ),
            SizedBox(height: 30.h,),
            CustomText(text: "Email Address",
              fontWeight: FontWeight.w500,
              fontSize: 16.sp,
            ),
            SizedBox(height: 12.h,),
            CustomTextField(hintText: "Email Address", controller:controller.emailController),
            SizedBox(height: 16.h,),
            CustomText(text: "Password",
              fontWeight: FontWeight.w500,
              fontSize: 16.sp,
            ),SizedBox(height: 12.h,),
            Obx(()=> CustomTextField(
                hintText: ".................",
                controller: controller.passwordController,
                obscureText: !controller.isPasswordVisible.value,
                suffixIcon: GestureDetector(
                  onTap: controller.togglePasswordVisibility,
                  child: Icon(
                    controller.isPasswordVisible.value
                        ? Icons.visibility
                        : Icons.visibility_off,
                    size: 20.sp,
                    color: AppColors.secondary,
                  ),
                ),
              ),
            ),
            SizedBox(height: 24.h,),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                CustomText(text: "Forgot Password?",
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w400,
                  color: AppColors.primary,
                )
              ],
            ),SizedBox(height: 24.h,),
            CustomButton(
              text: "Log In",
              onTap: (){},
              color: AppColors.primary,        // background color
              borderColor: AppColors.primary,  // border color
              textColor: Colors.white,         // text color
            ),
          ],
        ),
      ),
    );
  }
}
