import 'package:flutter/cupertino.dart';
import 'package:trogen_media/view/account/account.dart';
import 'package:trogen_media/view/my_course/my_course.dart';
import 'package:trogen_media/view/my_wishlist/wishlist.dart';

import '../view/home/home.dart';

class NavbarProvider extends ChangeNotifier{
  List<Widget> screens = const [
       HomeView(),
       MyCourseView(),
       WishListView(),
       AccountView()
       
  ];
  int selectedIndex =0;
  void changeIndex(int index){
      selectedIndex = index;
      notifyListeners();
  }
}