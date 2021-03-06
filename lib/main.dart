import 'package:flutter/material.dart';

import 'app/views/home_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        brightness: Brightness.dark,
        primaryColor: Colors.purpleAccent,
        primarySwatch: Colors.purple,
        fontFamily: 'Yeon Sung',
        textTheme:  const TextTheme(
          button: TextStyle(fontSize: 20)
        )
      ),
      home: HomeView(),
    );
  }
}