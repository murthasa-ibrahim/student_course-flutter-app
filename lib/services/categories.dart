import 'dart:convert';
import 'dart:developer';

import 'package:dio/dio.dart';

import '../model/categories_model.dart';

class GetCategories {
 
  Future<List<Categories>> getCategories() async {
     const url = "https://futursity.com/course/api/categories";
    try {
      final response = await Dio().get(url);
      if (response.statusCode == 200) {
        log('Successsf');
        return categoriesFromJson(jsonEncode(response.data));
      } else {
        throw 'something went worong';
      }
    } catch (e) {
      if (e is DioError) {
        if (e.response != null) {
          if (e.response?.data == null) {
            throw 'something went wrong';
          }
        }
        throw 'No internet';
      } else {
        throw 'something went wrong';
      }
    }
  }
}
