import 'package:flutter/material.dart';

class MedicalCare extends StatefulWidget {
  MedicalCare({Key key}) : super(key: key);

  @override
  _MedicalCareState createState() => _MedicalCareState();
}

class _MedicalCareState extends State<MedicalCare> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('医学疗养'),
      ),
      body: Container(
        child: Center(
          child: Text('医学疗养'),
        ),
      ),
    );
  }
}
