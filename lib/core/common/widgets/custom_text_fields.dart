import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../utils/constants/app_colors.dart';

class CustomTextField extends StatefulWidget {
  final String hintText;
  final TextEditingController controller;
  final Widget? prefixIcon;
  final Widget? suffixIcon;
  final bool obscureText;
  final Color borderColor;
  final Color focusBorderColor;
  final Color fillColor;
  final int maxLines;

  const CustomTextField({
    super.key,
    required this.hintText,
    required this.controller,
    this.prefixIcon,
    this.suffixIcon,
    this.obscureText = false,
    this.borderColor = const Color(0xFF55606C),
    this.focusBorderColor =  AppColors.primary,// Focus color
    this.fillColor = Colors.white,
    this.maxLines = 1,
  });

  @override
  State<CustomTextField> createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  late FocusNode _focusNode;

  @override
  void initState() {
    super.initState();
    _focusNode = FocusNode();
    _focusNode.addListener(() {
      setState(() {});
    });
  }

  @override
  void dispose() {
    _focusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: const BoxConstraints(minHeight: 50),
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12.r),
        color: widget.fillColor,
        border: Border.all(
          width: 1.3,
          color: _focusNode.hasFocus
              ? widget.focusBorderColor
              : widget.borderColor,
        ),
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 10.0.w),
        child: TextField(
          focusNode: _focusNode,
          controller: widget.controller,
          obscureText: widget.obscureText,
          maxLines: widget.maxLines,
          decoration: InputDecoration(
            hintText: widget.hintText,
            hintStyle: const TextStyle(color: Color(0xFF94A3B8)),
            prefixIcon: widget.prefixIcon != null
                ? Padding(
              padding: const EdgeInsets.all(10.0),
              child: widget.prefixIcon,
            )
                : null,
            suffixIcon: widget.suffixIcon != null
                ? Padding(
              padding: const EdgeInsets.all(10.0),
              child: widget.suffixIcon,
            )
                : null,
            border: InputBorder.none,
            enabledBorder: InputBorder.none,
            focusedBorder: InputBorder.none,
            disabledBorder: InputBorder.none,
            isDense: true,
            contentPadding: const EdgeInsets.symmetric(vertical: 15),
          ),
          style: const TextStyle(color: Color(0xFF8C8C8C)),
        ),
      ),
    );
  }
}