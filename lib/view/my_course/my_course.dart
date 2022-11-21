import 'package:flutter/material.dart';

class MyCourseView extends StatelessWidget {
  const MyCourseView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body:  SafeArea(
        child: Center(child: 
        Text('My course')),
      ),
    );
  }
}