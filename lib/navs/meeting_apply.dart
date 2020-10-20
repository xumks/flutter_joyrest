import 'package:flutter/material.dart';

class MeetingApply extends StatefulWidget {
  MeetingApply({Key key}) : super(key: key);

  @override
  _MeetingApplyState createState() => _MeetingApplyState();
}

class _MeetingApplyState extends State<MeetingApply> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('会议申请'),
      ),
      body: Container(
        child: ListView(
          children: [
            TextField(
              decoration: InputDecoration(hintText: '请输入姓名'),
              onChanged: (value) {
                print(value);
              },
            ),
            TextField(
              decoration: InputDecoration(hintText: '请输入电话'),
              onChanged: (value) {
                print(value);
              },
            ),
            //请输入会议城市
            TextField(
              decoration: InputDecoration(hintText: '请输入会议主题'),
              onChanged: (value) {
                print(value);
              },
            ),
            TextField(
              decoration: InputDecoration(hintText: '请输入会议规模'),
              onChanged: (value) {
                print(value);
              },
            ),

            TextField(
              decoration: InputDecoration(hintText: '请输入会议详情'),
              maxLines: 4,
              onChanged: (value) {
                print(value);
              },
            ),
          ],
        ),
      ),
    );
  }
}
