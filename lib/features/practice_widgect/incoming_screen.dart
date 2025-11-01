import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../core/utils/constants/app_colors.dart';
import '../login/presentations/widget/Incoming_card.dart';
class BookingListScreen extends StatelessWidget {
  final List<Map<String, dynamic>> bookings = [
    {
      "imageUrl": "https://padmanews24.com/wp-content/uploads/2019/10/bargur.jpg",
      "title": "2for1 Burgers",
      "restaurant": "Black Restaurant",
      "date": "10-11-2025",
      "time": "10:30 am",
    },
    {
      "imageUrl": "https://lh3.googleusercontent.com/at8LIxtxJSCI3xurG6vMGaeW2OLESLAw3dv2C90XykDzTPCmMmMBkbN1gn4OPnb3Ao1Ai7oAFi0_J3p21188jltwhOM=s750",
      "title": "Family Meal Deal",
      "restaurant": "Burger House",
      "date": "11-11-2025",
      "time": "12:00 pm",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:Colors.white,
      appBar: AppBar(
        title: Text("My Bookings"),
        backgroundColor: AppColors.primary,
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0.w),
        child: ListView.separated(
          itemCount: bookings.length,
          separatorBuilder: (_, __) => SizedBox(height: 16.h),
          itemBuilder: (context, index) {
            final data = bookings[index];
            return BookingCard(
              imageUrl: data["imageUrl"],
              title: data["title"],
              restaurant: data["restaurant"],
              date: data["date"],
              time: data["time"],
            );
          },
        ),
      ),
    );
  }
}
