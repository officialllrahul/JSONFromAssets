import 'dart:convert';
import 'package:flutter/services.dart';
import 'ProductDataModel.dart';

class ProducsJsonModel{
  final String productJsonDataPath ='assets/list.json';
  Future<ProductsModel> readJsonData() async{
    final String response = await rootBundle.loadString(productJsonDataPath);
    final data = await json.decode(response);
    return ProductsModel.fromJson(data);
  }
}
