import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:onboarding_screen/core/utils/constants/app_colors.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import '../../controllers/onboarding_controller.dart';


class OnboardingView extends StatelessWidget {
  OnboardingView({Key? key}) : super(key: key);

  final OnboardingController controller = Get.find<OnboardingController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 18.0.w),
        child: Column(
          children: [
            Expanded(
              child: PageView.builder(
                controller: controller.pageController,
                itemCount: controller.pages.length,
                onPageChanged: controller.onPageChanged,
                itemBuilder: (context, index) {
                  final page = controller.pages[index];
                  return Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Spacer(),
                      Image.asset(page["image"]!,),
                    SizedBox(height: 20.h),
                      Text(textAlign:TextAlign.center,
                          page["title"]!,
                          style: const TextStyle(
                              fontSize: 24, fontWeight: FontWeight.bold)),
                      SizedBox(height: 10.h),
                      Text(textAlign:TextAlign.center,
                          page["subtitle"]!,
                          style:  TextStyle(fontSize: 16.sp)),
                    ],
                  );
                },
              ),
            ),SizedBox(height: 20.h,),
            SmoothPageIndicator(
              controller: controller.pageController,
              count: controller.pages.length,
              effect: ExpandingDotsEffect(
                dotHeight: 10,       // normal dot height
                dotWidth: 12,        // normal dot width
                activeDotColor: AppColors.primary,
                expansionFactor: 3.0, // active dot will be 2x bigger
                spacing: 6.0,
              ),
            ),
             SizedBox(height: 170.h),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Skip",
                  style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 16.sp
                  ),
                ),
                GestureDetector(
                  onTap: controller.nextPage,
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100.r),
                      color: AppColors.primary,
                    ),
                    child: Padding(
                      padding:  EdgeInsets.all(12.0),
                      child: Icon(Icons.arrow_forward_outlined,
                        color: Colors.white,
                      ),
                    ),
                  ),
                )
              ],
            ),
            SizedBox(height: 20.h,),
          ],
        ),
      ),
    );
  }
}
