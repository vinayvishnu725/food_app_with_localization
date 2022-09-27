import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:food_app/Models/Product_model.dart';
import 'package:http/http.dart' as http;
import 'package:provider/provider.dart';

class NetworkApiService {
  final FlutterSecureStorage storage = FlutterSecureStorage();

  Future storeDataLocally(context) async {
    try {
      //storing data locally using secure storage
      String storedData = await DefaultAssetBundle.of(context)
          .loadString("assets/productData/Recipe-Info.json");

      return {"isSuccess": true, "data": storedData};
    } catch (err) {
      // print(err);
      return {"isSuccess": false};
    }
  }

// API to get all Product data
  Future getStoredData(context) async {
    try {
      //readimg data from secure storage
      var data = await storage.read(key: "product");
      // print(model);
      return {"isSuccess": true, "data": data};
    } on Exception catch (exception) {
      // print('Ecception = $exception');
      return {
        "isSuccess": false,
      };
      // only executed if error is of type Exception
    } catch (error) {
      // print('error =  $error');
      return {
        "isSuccess": false,
      };
      // executed for errors of all types other than Exception
    }
  }
}
