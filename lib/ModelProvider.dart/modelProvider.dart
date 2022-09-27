import 'dart:convert';

import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:food_app/Models/Product_model.dart';
import 'package:food_app/services/network_api_service.dart';
import 'package:provider/provider.dart';

//getting data and stioring data using provider
class ModelProvider {
  final _networkApiService = NetworkApiService();

  final FlutterSecureStorage storage = FlutterSecureStorage();
  ProductModel? _prdcuctModel;

  //service to store product data to storage
  Future storeProductDataLocally(context) async {
    final result = await _networkApiService.storeDataLocally(context);
    if (result["isSuccess"]) {
      Provider.of<ProductModel>(context, listen: false)
          .fromJson(jsonDecode(result['data']));
      _prdcuctModel = Provider.of<ProductModel>(context, listen: false);

      await storage.write(
          key: "product", value: ProductModel.serialize(_prdcuctModel!));

      return true;
    } else {
      return false;
    }
  }

// service to get product data
  Future getProductData(context) async {
    final data = await _networkApiService.getStoredData(context);
    if (data["isSuccess"]) {
      // print(data["isSuccess"]);
      // print(data["data"]);

      //storing state using provider
      Provider.of<ProductModel>(context, listen: false)
          .fromJson(jsonDecode(data["data"]));

      //if data has to be return can be return using object //// {"data":data, "isSuccess":true}
      return true;
    } else {
      return false;
    }
  }
}
