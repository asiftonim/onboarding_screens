import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:onboarding_screen/core/common/widgets/CustomText.dart';
import 'package:onboarding_screen/core/common/widgets/custom_text_fields.dart';
import 'package:onboarding_screen/core/utils/constants/app_colors.dart';
import 'package:onboarding_screen/routes/app_routes.dart';
import '../../../../core/common/widgets/custom_button.dart';
import '../../../../core/common/widgets/two_button_dialogBox.dart';
import '../../../../core/utils/constants/image_path.dart';
import '../../controllers/login_controllers.dart';
import '../widget/payment_bootom_shit.dart';


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
              onTap: (){
                Get.toNamed(AppRoute.practiceWidget);
              },
              color: AppColors.primary,        // background color
              borderColor: AppColors.primary,  // border color
              textColor: Colors.white,         // text color
            ),
            ElevatedButton(onPressed: (){
              showDialog(
                context: context,
                builder: (context) => TwoButtonDialogBox(
                  imagePath: ImagePath.logOut,
                  title: "Logout",
                  subtitle: "Are you sure you want to log out of your account?",
                  cancelButtonText: "Cancel",
                  confirmButtonText: "Yes, Logout",
                  onCancel: () {
                    Navigator.pop(context);
                  },
                  onConfirm: () {
                    // Perform logout action
                  },
                ),
              );

            }, child: Text("dddd")),
            ElevatedButton(
              onPressed: () {
                showPaymentBottomSheet();
              },
              child: Text("Select Payment Method"),
            ),
            ElevatedButton(
              onPressed: () {

              },
              child: Text("Show drop down"),
            ),

            CustomButton(
              text: "incoming",
              onTap: (){
                Get.toNamed(AppRoute.bookingListScreen);
              },
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
