import 'package:flutter/material.dart';
import 'package:app/utils/constants/colors.constant.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class CustomButtom extends StatelessWidget {
  final String text;
  final double? height;
  final double? width;
  final double? fontSize;
  final double? radius;
  final Color? color;
  final Function()? onPressed;

  const CustomButtom({
    Key? key,
    required this.text,
    this.width,
    this.height,
    this.color,
    this.onPressed,
    this.radius,
    this.fontSize,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        height: height ?? 5.h,
        width: width ?? 9.w,
        decoration: BoxDecoration(
            color: color ?? AppColors.basicColor,
            borderRadius: BorderRadius.circular(radius ?? 15),
            boxShadow: [
              BoxShadow(
                color: AppColors.buttonColor.withOpacity(.4),
                blurRadius: 10.0,
                spreadRadius: 1.0,
                offset: const Offset(
                  0.0,
                  3.0,
                ),
              ),
            ]),
        child: Center(
          child: Text(
            text,
            textAlign: TextAlign.center,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(
              color: Colors.white,
              fontSize: fontSize ?? .12.dp,
            ),
          ),
        ),
      ),
    );
  }
}
