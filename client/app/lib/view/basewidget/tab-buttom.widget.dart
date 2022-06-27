import 'package:flutter/material.dart';
import 'package:app/utils/constants/colors.constant.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class TabButton extends StatelessWidget {
  final String text;
  final String image;
  final bool active;
  final Function()? onPressed;

  const TabButton({
    Key? key,
    required this.text,
    required this.image,
    required this.active,
    this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 1.h),
        child: Container(
          height: 5.h,
          width: 16.w,
          decoration: BoxDecoration(
            color: active ? AppColors.basicColor : AppColors.backgroundColor2,
            borderRadius: BorderRadius.circular(15),
          ),
          padding: EdgeInsets.symmetric(horizontal: 1.2.w),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Image.asset(
                image,
                color: active ? AppColors.whiteColor : AppColors.basicColor,
                height: 2.h,
              ),
              SizedBox(width: 1.w),
              Text(
                text,
                textAlign: TextAlign.center,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(
                  color: active ? AppColors.whiteColor : AppColors.basicColor,
                  fontSize: 12.sp,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
