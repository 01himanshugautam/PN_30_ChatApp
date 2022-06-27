import 'package:flutter/material.dart';
import 'package:app/utils/constants/colors.constant.dart';
import 'package:app/utils/constants/images.constant.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class UserProfileCard extends StatelessWidget {
  const UserProfileCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          height: 8.h,
          width: 18.w,
          decoration: BoxDecoration(
              color: AppColors.backgroundColor2,
              borderRadius: BorderRadius.circular(2.h)),
          padding: EdgeInsets.symmetric(vertical: 1.h, horizontal: 1.w),
          child: Row(
            children: [
              SizedBox(
                width: 3.w,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(18.h),
                  child: Image.asset(
                    Images.user1,
                    height: 5.h,
                    width: 5.h,
                    fit: BoxFit.fill,
                  ),
                ),
              ),
              SizedBox(width: .4.w),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Username',
                    textAlign: TextAlign.center,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                        letterSpacing: 1.5,
                        color: AppColors.basicColor,
                        fontSize: .11.dp,
                        fontWeight: FontWeight.bold),
                  ),
                  Text(
                    'Username@gmail.com',
                    textAlign: TextAlign.center,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                        letterSpacing: 1.5,
                        color: AppColors.whiteColor,
                        fontSize: .09.dp,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
