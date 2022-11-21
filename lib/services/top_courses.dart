import 'dart:convert';
import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:trogen_media/model/top_courses_model.dart';

class GetTopCourses {
 
  Future<List<TopCourses>> getTopCoursesApi() async {
     const url = "https://futursity.com/course/api/top_courses";
    try {
      final response = await Dio().get(url);
      if (response.statusCode == 200) {
        log('Successsf');
        return topCoursesFromJson(jsonEncode(response.data));
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
