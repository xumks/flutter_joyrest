import 'package:flutter/material.dart';

class CareHome extends StatefulWidget {
  CareHome({Key key}) : super(key: key);

  @override
  _CareHomeState createState() => _CareHomeState();
}

class _CareHomeState extends State<CareHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('疗养别墅'),
      ),
      body: Container(
        child: Center(
          child: Text('疗养别墅'),
        ),
      ),
    );
  }
}
