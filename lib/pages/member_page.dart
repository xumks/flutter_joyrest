import 'package:flutter/material.dart';
import 'package:flutter_fai_webview/flutter_fai_webview.dart';

class MemberPage extends StatefulWidget {
  MemberPage({Key key}) : super(key: key);

  @override
  _MemberPageState createState() => _MemberPageState();
}

class _MemberPageState extends State<MemberPage> {
//   @override
//   Widget build(BuildContext context) {
//     // 主体实现
//     return Scaffold(
//         appBar: AppBar(title: Text('会员中心')),
//         body: Container(
//           color: Colors.grey[300],
//           child: ListView(
//             children: <Widget>[
//               //第一行
//               Container(
//                 padding:
//                     EdgeInsets.only(top: 30, left: 10, bottom: 40, right: 10),
//                 width: double.maxFinite,
//                 color: Colors.white,
//                 child: ListTile(
//                   leading: Image.asset(
//                     "images/cat.png",
//                     fit: BoxFit.cover,
//                     height: 60,
//                     width: 60,
//                   ),
//                   title: Text(
//                     '微信号',
//                     style: TextStyle(
//                         fontSize: 20,
//                         fontWeight: FontWeight.bold,
//                         color: Colors.black87),
//                   ),
//                   subtitle: Text(
//                     '123456',
//                     style: TextStyle(color: Colors.grey, fontSize: 16),
//                   ),
//                   trailing: Icon(Icons.keyboard_arrow_right),
//                   onTap: () {
//                     Navigator.pushNamed(context, '/myprofile');
//                   },
//                 ),
//               ),

//               Divider(),
//               //第二行
//               Container(
//                 padding: EdgeInsets.only(left: 10, right: 10),
//                 width: double.minPositive,
//                 color: Colors.white,
//                 child: Column(
//                   children: <Widget>[
//                     //第一行
//                     ListTile(
//                       leading: Image.asset(
//                         "images/ic_wallet.png",
//                         fit: BoxFit.cover,
//                         height: 20,
//                         width: 20,
//                       ),
//                       title: Text('钱包'),
//                       trailing: Icon(Icons.keyboard_arrow_right),
//                       onTap: () {},
//                     ),
//                     Divider(),
//                     //第一行
//                     ListTile(
//                       leading: Image.asset(
//                         "images/ic_collections.png",
//                         fit: BoxFit.cover,
//                         height: 20,
//                         width: 20,
//                       ),
//                       title: Text('收藏'),
//                       trailing: Icon(Icons.keyboard_arrow_right),
//                     ),
//                     Divider(),
//                     //第一行
//                     ListTile(
//                       leading: Image.asset(
//                         "images/ic_album.png",
//                         fit: BoxFit.cover,
//                         height: 20,
//                         width: 20,
//                       ),
//                       title: Text('相册'),
//                       trailing: Icon(Icons.keyboard_arrow_right),
//                       onTap: () {},
//                     ),
//                     Divider(),

//                     //第一行
//                     ListTile(
//                       leading: Image.asset(
//                         "images/ic_cards_wallet.png",
//                         fit: BoxFit.cover,
//                         height: 20,
//                         width: 20,
//                       ),
//                       title: Text('卡包'),
//                       trailing: Icon(Icons.keyboard_arrow_right),
//                       onTap: () {},
//                     ),
//                     Divider(),
//                     //第一行
//                     ListTile(
//                       leading: Image.asset(
//                         "images/ic_emotions.png",
//                         fit: BoxFit.cover,
//                         height: 20,
//                         width: 20,
//                       ),
//                       title: Text('表情'),
//                       trailing: Icon(Icons.keyboard_arrow_right),
//                       onTap: () {},
//                     ),
//                     Divider(
//                       height: 20,
//                     ),
//                     //第一行
//                     ListTile(
//                       leading: Image.asset(
//                         "images/ic_settings.png",
//                         fit: BoxFit.cover,
//                         height: 20,
//                         width: 20,
//                       ),
//                       title: Text('设置'),
//                       trailing: Icon(Icons.keyboard_arrow_right),
//                       onTap: () {
//                         Navigator.pushNamed(context, '/settingspage');
//                       },
//                     ),
//                   ],
//                 ),
//               ),

//               //第三行
//             ],
//           ),
//         ));
//   }
// }

  String htmlUrl =
      "https://mall.lechouhui.vip/addons/yun_shop/?menu#/member?i=1&t=1602662495";
  String message = "";

  ///通过url加载页面
  // FaiWebViewWidget buildFaiWebViewWidget() {
  //   return FaiWebViewWidget(
  //     //webview 加载网页链接
  //     url: htmlUrl,
  //     //webview 加载信息回调
  //     callback: callBack,
  //     //输出日志
  //     isLog: true,
  //   );
  // }

  ///加载 Html 的回调
  ///[code]消息类型标识
  ///[msg] 消息内容
  ///[content] 回传的参数
  void callBack(int code, String msg, content) {
    //加载页面完成后 对页面重新测量的回调
    //这里没有使用到
    //当FaiWebViewWidget 被嵌套在可滑动的 widget 中，必须设置 FaiWebViewWidget 的高度
    //设置 FaiWebViewWidget 的高度 可通过在 FaiWebViewWidget 嵌套一层 Container 或者 SizeBox
    if (code == 201) {
      //页面加载完成后 测量的 WebView 高度
      double webViewHeight = content;
      print("webViewHeight " + webViewHeight.toString());
    } else {
      //其他回调
    }
    setState(() {
      message = "回调：code[" + code.toString() + "]; msg[" + msg.toString() + "]";
    });
  }

  @override
  void initState() {
    // 初始化
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('会员中心'),
      ),
      body: Container(
        //  child: Center(child: Text("乐商院"),),
        child: FaiWebViewWidget(
          //webview 加载网页链接
          url: htmlUrl,
          //webview 加载信息回调
          callback: callBack,
          //输出日志
          isLog: true,
        ),
      ),
    );
  }
}
