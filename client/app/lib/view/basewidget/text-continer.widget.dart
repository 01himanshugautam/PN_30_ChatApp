// import 'package:flutter/material.dart';
// import 'package:app/utils/constants/colors.constant.dart';
// import 'package:app/utils/constants/images.constant.dart';

// class TestContainer extends StatelessWidget {
//   final String text;
//   final bool icon;
//   final Color? color;
//   final double? width;
//   const TestContainer({
//     Key? key,
//     required this.text,
//     this.icon = false,
//     this.color,
//     this.width,
//   }) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     var size = MediaQuery.of(context).size;
//     return Container(
//       height: size.height * .03,
//       decoration: BoxDecoration(
//         color: color ?? AppColors.cardColor2,
//         borderRadius: BorderRadius.circular(size.width * .016),
//       ),
//       padding: EdgeInsets.symmetric(horizontal: size.width * .03),
//       child: Row(
//         mainAxisAlignment: MainAxisAlignment.center,
//         children: [
//           icon == true
//               ? Padding(
//                   padding: const EdgeInsets.only(right: 5.0),
//                   child: Image.asset(
//                     Images.clock,
//                     color: AppColors.whiteColor,
//                     height: 13,
//                   ),
//                 )
//               : const SizedBox(),
//           SizedBox(
//             width: width ?? size.width * .12,
//             child: Text(
//               text,
//               textAlign: TextAlign.center,
//               overflow: TextOverflow.ellipsis,
//               style: TextStyle(color: Colors.white, fontSize: 10),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
