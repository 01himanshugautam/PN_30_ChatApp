// import 'dart:developer';

// import 'package:dio/dio.dart';

// import 'package:app/utils/constants/app-urls.constant.dart';

// class GivewayRepository {
//   Dio dio = Dio();

//   GivewayRepository();

//   Future giveway(url) async {
//     log(url);
//     try {
//       Response response = await dio.get(url);
//       return response.data;
//     } catch (e) {
//       return e;
//     }
//   }

//   Future givewayDetail(int id) async {
//     try {
//       Response response = await dio.get(
//         AppUrls.giveway + "?id=$id",
//       );
//       return response.data;
//     } catch (e) {
//       return e;
//     }
//   }
// }
