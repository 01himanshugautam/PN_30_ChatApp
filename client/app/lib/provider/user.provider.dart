// import 'package:flutter/material.dart';
// import 'package:app/data/repository/giveway.repository.dart';

// class GivewayProvider with ChangeNotifier {
//   GivewayRepository givewayRepository = GivewayRepository();
//   GivewayProvider();

//   List _items = [];

//   List get items {
//     return [..._items];
//   }

//   giveway(String? url) async {
//     _items = await givewayRepository.giveway(url);
//     notifyListeners();
//     return _items;
//   }

//   givewayDetail(int id) async {
//     var data = await givewayRepository.givewayDetail(id);
//     notifyListeners();
//     return data;
//   }
// }
