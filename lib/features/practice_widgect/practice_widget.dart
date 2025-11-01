import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:onboarding_screen/core/common/widgets/CustomText.dart';
import 'package:onboarding_screen/core/utils/constants/app_colors.dart';


class PracticeWidget extends StatelessWidget {
  const PracticeWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body:Center(
        child: Padding(
          padding:EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12.r),
                  border: Border.all(
                    color: AppColors.secondary,
                    width: 3,
                  ),
                ),child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        width: double.infinity,
                        height: 169.h,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                            topRight: Radius.circular(12.r),
                            topLeft: Radius.circular(12.r),
                          ),image: DecorationImage(image: NetworkImage("https://th.bing.com/th/id/OIP.jJI3bTJ-diLfKDHb9-vwmwHaE8?w=259&h=180&c=7&r=0&o=7&pid=1.7&rm=3"),
                          fit: BoxFit.cover
                        )
                        ),
                      ),
                      SizedBox(height: 12.h,),
                      CustomText(text: "2for1 Burgers",
                        fontSize: 20.sp,
                        fontWeight: FontWeight.w600,
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
