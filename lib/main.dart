import 'package:flutter/material.dart';
import 'package:tabbar_task/home_page2.dart';

import 'home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.dark,
      darkTheme: ThemeData( backgroundColor: Colors.white,
        //brightness: Brightness.dark,
        primarySwatch: Colors.blue,
      ),

      // home: HomePage(),
       home: HomePage2(),
    );
  }
}

