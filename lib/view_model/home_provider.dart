import 'package:flutter/cupertino.dart';
import 'package:trogen_media/model/top_courses_model.dart';
import 'package:trogen_media/services/top_courses.dart';

class HomeProvider extends ChangeNotifier{

  List<TopCourses> topCourses = [];

  getTopCourses()async{
    
    bool isLoading = false;
    await GetTopCourses().getTopCoursesApi().whenComplete(() => null).then((value){
          if(value.isNotEmpty){
             topCourses = value;
          }
     });  
  }
  
}