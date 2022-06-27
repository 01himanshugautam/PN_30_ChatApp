import 'package:flutter/material.dart';
import 'package:app/utils/constants/colors.constant.dart';
import 'package:app/utils/constants/images.constant.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class ReferralBox extends StatelessWidget {
  const ReferralBox({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 1.h),
      child: Stack(
        children: [
          Padding(
            padding: EdgeInsets.only(left: 4.h),
            child: Container(
              height: 8.h,
              width: 11.5.w,
              decoration: BoxDecoration(
                  color: AppColors.backgroundColor1,
                  borderRadius: BorderRadius.circular(1.h)),
              padding: EdgeInsets.only(left: 2.2.w, top: 1.5.h, right: .5.w),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 1.2.h),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Anna',
                          textAlign: TextAlign.center,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                            color: AppColors.whiteColor,
                            fontSize: 9.sp,
                          ),
                        ),
                        SizedBox(height: .2.h),
                        Text(
                          'ID:1234567',
                          textAlign: TextAlign.center,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                            color: AppColors.whiteColor.withOpacity(.6),
                            fontSize: 9.sp,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Text(
                    '7 months ago',
                    textAlign: TextAlign.center,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      color: AppColors.whiteColor.withOpacity(.6),
                      fontSize: 8.sp,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 1.h),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(2.h),
              child: Image.asset(
                Images.user1,
                height: 6.h,
                width: 4.w,
                fit: BoxFit.fill,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
