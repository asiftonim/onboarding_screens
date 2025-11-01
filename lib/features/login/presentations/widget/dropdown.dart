import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/common/widgets/CustomText.dart';

// 🎯 GetX Controller
class IssueController extends GetxController {
  var selectedIssue = ''.obs;

  List<String> issues = [
    "Room Related Issues",
    "Bathroom Issues",
    "Facilities & Services",
    "Food & Dining",
    "Staff & Management",
    "Safety & Security",
    "Others",
  ];
}

// 🎯 Main Widget
class IssueDropDown extends StatelessWidget {
  final controller = Get.put(IssueController());

  IssueDropDown({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12.r),
        color: Colors.white,
      ),
      child: Padding(
        padding: EdgeInsets.all(12.0.w),
        child: Obx(() {
          return DropdownButtonFormField<String>(
            value: controller.selectedIssue.value.isEmpty
                ? null
                : controller.selectedIssue.value,
            dropdownColor: Colors.white,
            decoration: InputDecoration(
              labelText: "Select Issue Type",
              labelStyle: TextStyle(
                fontSize: 14.sp,
                color: Colors.grey,
              ),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10.r),
                borderSide: BorderSide(color: Colors.grey.shade300, width: 1),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10.r),
                borderSide: BorderSide(color: Colors.blue, width: 1.5),
              ),
              contentPadding:
              EdgeInsets.symmetric(horizontal: 12.w, vertical: 10.h),
            ),
            items: controller.issues.map((String issue) {
              return DropdownMenuItem<String>(
                value: issue,
                child: CustomText(
                  text: issue,
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w400,
                ),
              );
            }).toList(),
            onChanged: (value) {
              controller.selectedIssue.value = value!;
            },
          );
        }),
      ),
    );
  }
}
