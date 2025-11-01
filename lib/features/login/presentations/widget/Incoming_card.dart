import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../core/common/widgets/CustomText.dart';
import '../../../../core/common/widgets/custom_button.dart';
import '../../../../core/utils/constants/app_colors.dart';
import '../../../../core/utils/constants/image_path.dart';

class BookingCard extends StatelessWidget {
  final String imageUrl;
  final String title;
  final String restaurant;
  final String date;
  final String time;

  const BookingCard({
    super.key,
    required this.imageUrl,
    required this.title,
    required this.restaurant,
    required this.date,
    required this.time,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12.r),
        color: Colors.white,
        border: Border.all(
          color: AppColors.secondary,
          width: 2,
        ),
      ),
      child: Padding(
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
                ),
                image: DecorationImage(
                  image: NetworkImage(imageUrl),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            SizedBox(height: 12.h),
            CustomText(
              text: title,
              fontWeight: FontWeight.w600,
              fontSize: 20.sp,
            ),
            Row(
              children: [
                CustomText(
                  text: restaurant,
                  fontSize: 12.sp,
                  fontWeight: FontWeight.w400,
                  color: AppColors.primary,
                ),
                SizedBox(width: 8.w),
                Image(
                  image: AssetImage(ImagePath.arrowIcon),
                  height: 16.sp,
                  width: 16.sp,
                ),
              ],
            ),
            SizedBox(height: 16.h),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Image(
                      image: AssetImage(ImagePath.calenderIcon),
                      height: 16.h,
                      width: 16.w,
                    ),
                    SizedBox(width: 8.w),
                    CustomText(
                      text: date,
                      fontWeight: FontWeight.w400,
                      fontSize: 12.sp,
                      color: AppColors.textGrey,
                    ),
                  ],
                ),
                Row(
                  children: [
                    Image(
                      image: AssetImage(ImagePath.clockIcon),
                      height: 16.h,
                      width: 16.w,
                    ),
                    SizedBox(width: 8.w),
                    CustomText(
                      text: time,
                      fontWeight: FontWeight.w400,
                      fontSize: 12.sp,
                      color: AppColors.textGrey,
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(height: 20.h),
            Row(
              children: [
                Expanded(
                  child: CustomButton(
                    text: "Cancel",
                    onTap: () {},
                    color: Colors.transparent,
                    textColor: AppColors.primary,
                  ),
                ),
                SizedBox(width: 8.w),
                Expanded(
                  child: CustomButton(
                    text: "QR Code",
                    onTap: () {},
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
