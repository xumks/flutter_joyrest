import 'package:flutter/material.dart';

import 'package:flutter_joyrest/pages/index_page.dart';

import 'package:flutter_joyrest/routes/routes.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '乐养院',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        // 主色调
        // primarySwatch: Colors.blue,
        primarySwatch: Colors.blue,
        // primaryColor: Colors.white,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home:
          // MyHomePage(title: '乐养院'),
          IndexPage(),
      initialRoute: '/',
      onGenerateRoute: onGenerateRoute,
    );
  }
}
