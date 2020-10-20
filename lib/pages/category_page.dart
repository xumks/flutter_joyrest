import 'package:flutter/material.dart';
import 'package:flutter_fai_webview/flutter_fai_webview.dart';

class CategoryPage extends StatefulWidget {
  CategoryPage({Key key}) : super(key: key);

  @override
  _CategoryPageState createState() => _CategoryPageState();
}

class _CategoryPageState extends State<CategoryPage> {
//   @override
//   Widget build(BuildContext context) {
//     // 双导航
//     return DefaultTabController(
//             length: 4, //tab的长度
//             child: Scaffold(
//               appBar: AppBar(
//                 backgroundColor: Colors.black26,
//                 //将tabBar放在Title里面
//                 title: Row(
//                   children: <Widget>[
//                     Expanded(
//                       child: TabBar(
//                           indicatorColor: Colors.red,
//                           labelColor: Colors.yellow,
//                           unselectedLabelColor: Colors.white,
//                           indicatorSize: TabBarIndicatorSize.label,
//                           isScrollable: true, //多个按钮可以滑动
//                           tabs: <Widget>[
//                             Tab(text: '热销产品标签'),
//                             Tab(text: '推荐产品标签'),
//                             Tab(text: '热门产品标签'),
//                             Tab(text: '综合排名标签'),
//                           ]),
//                     )
//                   ],
//                 ),
//                 // actions: <Widget>[],
//                 // bottom:
//                 // TabBar(tabs: <Widget>[
//                 //   Tab(text: '热销'),
//                 //   Tab(text: '推荐'),
//                 // ]
//                 // ),
//               ),
//               body: TabBarView(
//                 children: <Widget>[
//                   ListView(
//                     children: <Widget>[
//                       ListTile(
//                         title: Text('这是第一个'),
//                       ),
//                       ListTile(
//                         title: Text('这是第一个'),
//                       ),
//                       ListTile(
//                         title: Text('这是第一个'),
//                       ),
//                     ],
//                   ),
//                   ListView(
//                     children: <Widget>[
//                       ListTile(
//                         title: Text('这是第er个'),
//                       ),
//                       ListTile(
//                         title: Text('这是第er个'),
//                       ),
//                       ListTile(
//                         title: Text('这是第er个'),
//                       ),
//                     ],
//                   ),
//                   ListView(
//                     children: <Widget>[
//                       ListTile(
//                         title: Text('这是第三个'),
//                       ),
//                       ListTile(
//                         title: Text('这是第3个'),
//                       ),
//                       ListTile(
//                         title: Text('这是第3个'),
//                       ),
//                     ],
//                   ),
//                   ListView(
//                     children: <Widget>[
//                       ListTile(
//                         title: Text('这是第4个'),
//                       ),
//                       ListTile(
//                         title: Text('这是第4个'),
//                       ),
//                       ListTile(
//                         title: Text('这是第4个'),
//                       ),
//                     ],
//                   ),
//                 ],
//               ),
//             ))
//         // Container(
//         //   child: Column(
//         //     crossAxisAlignment: CrossAxisAlignment.start,
//         //     mainAxisAlignment: MainAxisAlignment.center,
//         //     children: <Widget>[
//         //       RaisedButton(
//         //         child: Text('跳转到表单页面并传值'),
//         //         onPressed: () {
//         //           //路由跳转
//         //           Navigator.of(context)
//         //               .push(MaterialPageRoute(builder: (context) => SubmitPage()));
//         //         },
//         //         color: Theme.of(context).accentColor,
//         //         textTheme: ButtonTextTheme.primary,
//         //       ),
//         //     ],
//         //   ),
//         // )
//         ;
//   }
// }
  String htmlUrl =
      "https://mall.lechouhui.vip/addons/yun_shop/?menu#/diy?page_id=109&i=1";

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
        title: Text('乐养院'),
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
