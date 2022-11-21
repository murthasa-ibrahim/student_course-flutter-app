import 'package:flutter/cupertino.dart';

class CourseDetailsProvider extends ChangeNotifier{
  List<String> categoryList = ['Includes','Outcomes','Requirements'];
  int selectedIndex = 0;
  void changeIndex(int index){
    selectedIndex = index;
    notifyListeners();
  }
}