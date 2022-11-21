import 'package:flutter/material.dart';

class WishListView extends StatelessWidget {
  const WishListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body:  SafeArea(
        child: Center(child: 
        Text('My wish list')),
      ),
    );
  }
}