import 'package:flutter/material.dart';

class HomeAsset extends StatefulWidget {
  HomeAsset({Key key}) : super(key: key);

  @override
  _HomeAssetState createState() => _HomeAssetState();
}

class _HomeAssetState extends State<HomeAsset> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('别墅产权'),
      ),
      body: Container(
        child: Center(
          child: Text('别墅产权'),
        ),
      ),
    );
  }
}
