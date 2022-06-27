// ignore_for_file: avoid_print

import 'dart:developer';

import 'package:app/view/basewidget/custom-buttom.widget.dart';
import 'package:app/view/basewidget/custom-text-field.widget.dart';
import 'package:flutter/material.dart';
import 'package:app/utils/constants/colors.constant.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:socket_io_client/socket_io_client.dart' as IO;

class DashboardScreen extends StatefulWidget {
  const DashboardScreen({Key? key}) : super(key: key);

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  late IO.Socket socket;
  conect() async {
    print('connected ' + socket.connected.toString());
  }

  Future<void> initSocket() async {
    print('Connecting to chat service');
    socket = IO.io('http://localhost:3001');
    socket.onconnect();
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    initSocket();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor2,
      body: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'App',
                style: TextStyle(
                  fontSize: 5.h,
                  color: AppColors.whiteColor,
                  fontWeight: FontWeight.bold,
                ),
              ),
              CustomTextField(
                hintText: 'Enter Room Id',
                backgroundColor: AppColors.whiteColor,
                width: 70.w,
              ),
              CustomButtom(
                text: 'Submit',
                width: 70.w,
                fontSize: 3.h,
                onPressed: initSocket,
              ),
              CustomTextField(
                hintText: 'Enter Message Id',
                backgroundColor: AppColors.whiteColor,
                width: 70.w,
              ),
              CustomButtom(
                text: 'Send Mesage',
                width: 70.w,
                fontSize: 3.h,
                onPressed: conect,
              ),
              Text(
                '${socket.connected}',
                style: TextStyle(
                  fontSize: 5.h,
                  color: AppColors.whiteColor,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
