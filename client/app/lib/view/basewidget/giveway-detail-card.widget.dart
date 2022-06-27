// import 'package:flutter/material.dart';
// import 'package:app/utils/constants/colors.constant.dart';
// import 'package:app/view/basewidget/text-continer.widget.dart';

// class GiveawayDetailCard extends StatelessWidget {
//   String image;
//   String worth;
//   String title;
//   String platforms;
//   int id;
//   String countDown;
//   GiveawayDetailCard({
//     Key? key,
//     required this.title,
//     required this.image,
//     required this.id,
//     required this.platforms,
//     required this.worth,
//     required this.countDown,
//   }) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     var size = MediaQuery.of(context).size;
//     return GestureDetector(
//       child: Padding(
//         padding: const EdgeInsets.symmetric(vertical: 10),
//         child: Container(
//             height: size.height * .3,
//             decoration: BoxDecoration(
//                 color: AppColors.cardColor,
//                 borderRadius: BorderRadius.circular(size.width * .08)),
//             child: Column(
//               children: [
//                 ClipRRect(
//                   borderRadius: BorderRadius.circular(15),
//                   child: Image.network(
//                     image,
//                     height: size.height * .21,
//                     width: size.width,
//                     fit: BoxFit.fill,
//                   ),
//                 ),
//                 Padding(
//                   padding: EdgeInsets.symmetric(
//                       horizontal: size.width * .03,
//                       vertical: size.height * .01),
//                   child: Row(
//                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                     children: [
//                       Column(
//                         crossAxisAlignment: CrossAxisAlignment.start,
//                         children: [
//                           SizedBox(
//                             width: size.width * .5,
//                             child: Text(
//                               title,
//                               overflow: TextOverflow.ellipsis,
//                               style: TextStyle(
//                                   color: AppColors.whiteColor,
//                                   fontSize: size.height * .02,
//                                   fontWeight: FontWeight.bold),
//                             ),
//                           ),
//                           const SizedBox(height: 7),
//                           Row(
//                             children: [
//                               Text(
//                                 worth == 'N/A' ? "\$0.00" : worth,
//                                 style: TextStyle(
//                                   color: AppColors.whiteColor,
//                                   fontSize: size.height * .02,
//                                   fontWeight: FontWeight.bold,
//                                   decoration: TextDecoration.lineThrough,
//                                 ),
//                               ),
//                               SizedBox(
//                                 width: size.width * .01,
//                               ),
//                               Text(
//                                 "FREE",
//                                 style: TextStyle(
//                                     color: AppColors.yellowColor,
//                                     fontSize: size.height * .02,
//                                     fontWeight: FontWeight.bold),
//                               ),
//                             ],
//                           ),
//                         ],
//                       ),
//                       Column(
//                         crossAxisAlignment: CrossAxisAlignment.end,
//                         children: [
//                           TestContainer(
//                             text: '$countDown',
//                             icon: true,
//                             // width: 70,
//                           ),
//                           const SizedBox(height: 7),
//                           TestContainer(
//                             text: platforms,
//                           ),
//                         ],
//                       ),
//                     ],
//                   ),
//                 ),
//               ],
//             )),
//       ),
//     );
//   }
// }
