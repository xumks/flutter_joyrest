import 'package:flutter/material.dart';
import 'package:flutter_fai_webview/flutter_fai_webview.dart';

class CartPage extends StatefulWidget {
  CartPage({Key key}) : super(key: key);

  @override
  _CartPageState createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  String htmlUrl =
      // "https://mall.lechouhui.vip/addons/yun_shop/?menu#/o2o/store_v2/31?i=1&type=1&mid=64396&shop_id";
      // "https://mall.lechouhui.vip/addons/yun_shop/?menu#/home?i=1&mid=64396";
      "https://mall.lechouhui.vip/addons/yun_shop/?menu#/diy?page_id=107&i=1"; //乐筹汇商城
  // "https://mall.lechouhui.vip/addons/yun_shop/?menu#/o2o/store_v2/31?i=1";    //壹号货栈

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
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('乐商院'),
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
