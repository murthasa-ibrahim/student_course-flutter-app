import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:trogen_media/view/splash/spalsh.dart';
import 'package:trogen_media/view_model/cousrse_details_provider.dart';
import 'package:trogen_media/view_model/home_provider.dart';
import 'package:trogen_media/view_model/navbar_provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<NavbarProvider>(create: (context) => NavbarProvider(),),
         ChangeNotifierProvider<HomeProvider>(create: (context) => HomeProvider(),),
         ChangeNotifierProvider<CourseDetailsProvider>(create: (context) => CourseDetailsProvider(),)
      ],
      child: MaterialApp(
        title: 'Flutter Demo',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          tabBarTheme: TabBarTheme(
            
          )
        ),
        home: const Splash(),
      ),
    );
  }
}
