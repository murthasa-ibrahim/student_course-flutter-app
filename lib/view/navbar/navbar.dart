import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../view_model/navbar_provider.dart';


class Navbar extends StatelessWidget {
  const Navbar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Consumer<NavbarProvider>(
          builder: (_, provider, __) =>
              (provider.screens[provider.selectedIndex])),
      bottomNavigationBar: Consumer<NavbarProvider>(
        builder: (context, value, child) => BottomNavigationBar(
            iconSize: 30,
            currentIndex: value.selectedIndex,
            selectedItemColor: const Color.fromARGB(255, 208, 38, 26),
            unselectedItemColor: Colors.grey,
            showUnselectedLabels: true,
            onTap: (index) => value.changeIndex(index),
            items: const [
              BottomNavigationBarItem(
                  icon: Icon(
                    Icons.cast_for_education,
                  ),
                  label: 'Course'),
              BottomNavigationBarItem(
                  icon: Icon(Icons.shopping_bag_outlined), label: 'My Course'),
              BottomNavigationBarItem(
                  icon: Icon(Icons.favorite_outline), label: 'Wishlist'),
              BottomNavigationBarItem(
                  icon: Icon(Icons.person_outline), label: 'Account'),
            ]),
      ),
    );
  }
}
