import 'package:flutter/material.dart';

class MemberApply extends StatefulWidget {
  MemberApply({Key key}) : super(key: key);

  @override
  _MemberApplyState createState() => _MemberApplyState();
}

class _MemberApplyState extends State<MemberApply> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('会长申请'),
      ),
      body: Container(
        child: ListView(
          children: [
            TextField(
              decoration: InputDecoration(hintText: '请输入申请人姓名'),
              onChanged: (value) {
                print(value);
              },
            ),
            TextField(
              decoration: InputDecoration(hintText: '请输入联系电话'),
              onChanged: (value) {
                print(value);
              },
            ),
            //请选择城市城市
            TextField(
              decoration: InputDecoration(hintText: '请输入会议主题'),
              onChanged: (value) {
                print(value);
              },
            ),
            TextField(
              decoration: InputDecoration(hintText: '请输入推荐人姓名'),
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
