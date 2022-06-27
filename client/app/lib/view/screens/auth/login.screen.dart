import 'package:flutter/material.dart';
import 'package:app/utils/constants/colors.constant.dart';
import 'package:app/utils/constants/images.constant.dart';
import 'package:app/view/basewidget/custom-buttom.widget.dart';
import 'package:app/view/basewidget/custom-text-field.widget.dart';
import 'package:app/view/screens/dashboard/dashboard.screen.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({Key? key}) : super(key: key);

  final TextEditingController _username = TextEditingController();
  final TextEditingController _password = TextEditingController();
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: Row(
        children: [
          Container(
            width: 35.w,
            height: size.height,
            color: AppColors.backgroundColor1,
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Sign In',
                  style: TextStyle(
                    letterSpacing: 1.5,
                    fontSize: .20.dp,
                    color: AppColors.basicColor,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: size.height * .06),
                SizedBox(
                  width: size.width * .2,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Username',
                        style: TextStyle(
                          fontSize: size.height * .015,
                          color: AppColors.whiteColor,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      CustomTextField(
                        controller: _username,
                        hintText: 'Username',
                      ),
                      SizedBox(height: size.height * .01),
                      Text(
                        'Password',
                        style: TextStyle(
                          fontSize: size.height * .015,
                          color: AppColors.whiteColor,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      CustomTextField(
                        controller: _password,
                        hintText: 'Password',
                      ),
                      SizedBox(height: size.height * .03),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          CustomButtom(
                              text: 'Sign In',
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            DashboardScreen()));
                              }),
                        ],
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
          Container(
            width: size.width * .65,
            height: size.height,
            color: AppColors.backgroundColor2,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  'Admin Portal',
                  style: TextStyle(
                      letterSpacing: 1.5,
                      fontSize: .24.dp,
                      color: AppColors.basicColor,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(height: size.height * .06),
                Image.asset(
                  Images.logo,
                  height: size.height * .3,
                  width: size.width * .6,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
