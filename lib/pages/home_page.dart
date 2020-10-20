import 'package:flutter/material.dart';
import 'package:flutter_fai_webview/flutter_fai_webview.dart';
import 'package:flutter_swiper/flutter_swiper.dart';

class HomePage extends StatefulWidget {
  HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
//   // List<Map> imageList = [
//   //   {"url": "https://www.itying.com/images/flutter/1.png"},
//   //   {"url": "https://www.itying.com/images/flutter/2.png"},
//   //   {"url": "https://www.itying.com/images/flutter/3.png"},
//   //   {"url": "https://www.itying.com/images/flutter/4.png"},
//   //   {"url": "https://www.itying.com/images/flutter/5.png"},
//   //   {"url": "https://www.itying.com/images/flutter/6.png"},
//   // ];
//   List imageList = [
//     'images/banner_1.png',
//     'images/banner_2.png',
//   ];

//   @override
//   void initState() {
//     // 初始化
//     super.initState();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       //使用Scaffold，就是为了使用AppBar
//       child: Scaffold(
//         appBar: AppBar(
//           leading: IconButton(
//             icon: Icon(Icons.home),
//             onPressed: () {
//               print('home');
//             },
//           ),
//           //设置title
//           title: Text('首页'),
//           actions: [
//             IconButton(
//                 icon: Icon(Icons.search),
//                 onPressed: () {
//                   print('search');
//                 }),
//             IconButton(
//                 icon: Icon(Icons.settings),
//                 onPressed: () {
//                   print('settings');
//                 })
//           ],
//         ),
//         body: ListView(
//           padding: EdgeInsets.all(8.0),
//           children: <Widget>[
//             Column(
//               children: <Widget>[
//                 Container(
//                   // height: 250,
//                   width: double.infinity,
//                   child: AspectRatio(
//                     aspectRatio: 16 / 9, //纵横比
//                     child: Swiper(
//                       itemCount: imageList.length,
//                       itemBuilder: (BuildContext context, int index) {
//                         return
//                             // Image.network(imageList[index]["url"],
//                             Image.asset(imageList[index], fit: BoxFit.fill);
//                       },
//                       pagination: SwiperPagination(), //分页器
//                       // control: SwiperControl(), //左右箭头
//                       loop: true, //循环滚动
//                       autoplay: true, //自动轮播
//                     ),
//                   ),
//                 ),
//                 SizedBox(height: 10),
//                 // Text('轮播图'),
//               ],
//             ),
//             Row(
//               crossAxisAlignment: CrossAxisAlignment.baseline,
//               children: <Widget>[
//                 Spacer(),
//                 Column(
//                   children: <Widget>[
//                     InkWell(
//                         onTap: () {
//                           print('疗养别墅');
//                           Navigator.pushNamed(context, '/care_home');
//                         },
//                         child: Column(
//                           children: <Widget>[
//                             Image.asset('images/ib_1.png', height: 50),
//                             Text('疗养别墅')
//                           ],
//                         )),
//                   ],
//                 ),
//                 Spacer(),
//                 Column(
//                   children: <Widget>[
//                     InkWell(
//                       onTap: () {
//                         print('会议申请');
//                         Navigator.pushNamed(context, '/meeting_apply');
//                       },
//                       child: Column(
//                         children: <Widget>[
//                           Image.asset('images/ib_2.png', height: 50),
//                           Text('会议申请')
//                         ],
//                       ),
//                     ),
//                   ],
//                 ),
//                 Spacer(),
//                 Column(
//                   children: <Widget>[
//                     InkWell(
//                       onTap: () {
//                         print('别墅产权');
//                         Navigator.pushNamed(context, '/home_asset');
//                       },
//                       child: Column(
//                         children: [
//                           Image.asset('images/ib_3.png', height: 50),
//                           Text('别墅产权')
//                         ],
//                       ),
//                     ),
//                   ],
//                 ),
//                 Spacer(),
//                 Column(
//                   children: <Widget>[
//                     InkWell(
//                       onTap: () {
//                         print('医学疗养');
//                         Navigator.pushNamed(context, '/medical_care');
//                       },
//                       child: Column(
//                         children: [
//                           Image.asset('images/ib_4.png', height: 50),
//                           Text('医学疗养'),
//                         ],
//                       ),
//                     ),
//                   ],
//                 ),
//                 Spacer(),
//                 Column(
//                   children: <Widget>[
//                     InkWell(
//                         onTap: () {
//                           print('会长申请');
//                           Navigator.pushNamed(context, '/member_apply');
//                         },
//                         child: Column(
//                           children: [
//                             Image.asset('images/ib_5.png', height: 50),
//                             Text('会长申请')
//                           ],
//                         )),
//                   ],
//                 ),
//                 Spacer(),
//               ],
//             ),

//             Image.asset('images/enterprise.png'),
//             Row(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: <Widget>[
//                 Spacer(),
//                 Column(
//                   children: <Widget>[
//                     Image.asset(
//                       'images/member_1.jpg',
//                       width: 100,
//                     ),
//                     Text(
//                       '￥998.00',
//                       style: TextStyle(color: Colors.orange),
//                     ),
//                   ],
//                 ),
//                 Spacer(),
//                 Column(
//                   children: <Widget>[
//                     Image.asset(
//                       'images/member_2.jpg',
//                       width: 100,
//                     ),
//                     Text(
//                       '￥9800.00',
//                       style: TextStyle(color: Colors.orange),
//                     ),
//                   ],
//                 ),
//                 Spacer(),
//                 Column(
//                   children: <Widget>[
//                     Image.asset(
//                       'images/member_3.jpg',
//                       width: 100,
//                     ),
//                     Text(
//                       '￥198000.00',
//                       style: TextStyle(color: Colors.orange),
//                     ),
//                   ],
//                 ),
//                 Spacer(),
//               ],
//             ),

//             ///全球联创股东
//             Padding(
//               padding: EdgeInsets.all(20),
//               child: Container(
//                 decoration: BoxDecoration(
//                     borderRadius: BorderRadius.circular(8.0),
//                     color: Colors.grey[100]),
//                 child: Padding(
//                   padding: EdgeInsets.all(8),
//                   child: Row(
//                     children: [
//                       Image.asset(
//                         'images/member_4.jpg',
//                         width: 100,
//                       ),
//                       Column(
//                         children: <Widget>[
//                           Text(
//                             '全球联创股东（支持汇款及线下转账）',
//                             // style: TextStyle(color: Colors.orange),
//                           ),
//                           Text(
//                             '￥1980000.00',
//                             style: TextStyle(color: Colors.orange),
//                           ),
//                         ],
//                       ),
//                       Spacer(),
//                     ],
//                   ),
//                 ),
//               ),
//             ),
//             //会员免费预定酒店
//             Image.asset('images/member_free.png'),
//             Column(
//               children: <Widget>[
//                 Row(
//                   children: <Widget>[
//                     Spacer(),
//                     Column(
//                       children: <Widget>[
//                         Image.asset(
//                           'images/deal_1.png',
//                           width: 180,
//                         ),
//                         Text(
//                           '五星级康养别墅包吃包住',
//                         ),
//                         Text(
//                           '￥998.00',
//                           style: TextStyle(color: Colors.orange),
//                         ),
//                       ],
//                     ),
//                     Spacer(),
//                     Column(
//                       children: <Widget>[
//                         Image.asset(
//                           'images/deal_2.png',
//                           width: 180,
//                         ),
//                         Text(
//                           '五星级康养别墅包吃包住',
//                         ),
//                         Text(
//                           '￥998.00',
//                           style: TextStyle(color: Colors.orange),
//                         ),
//                       ],
//                     ),
//                     Spacer(),
//                   ],
//                 )
//               ],
//             ),
//             //会员专属会议招商
//             Image.asset('images/member_in.png'),
//             Column(
//               children: <Widget>[
//                 Row(
//                   children: <Widget>[
//                     Spacer(),
//                     Column(
//                       children: <Widget>[
//                         Image.asset(
//                           'images/deal_1.png',
//                           width: 180,
//                         ),
//                         Text(
//                           '五星级康养别墅包吃包住',
//                         ),
//                         Text(
//                           '￥998.00',
//                           style: TextStyle(color: Colors.orange),
//                         ),
//                       ],
//                     ),
//                     Spacer(),
//                     Column(
//                       children: <Widget>[
//                         Image.asset(
//                           'images/deal_2.png',
//                           width: 180,
//                         ),
//                         Text(
//                           '五星级康养别墅包吃包住',
//                         ),
//                         Text(
//                           '￥998.00',
//                           style: TextStyle(color: Colors.orange),
//                         ),
//                       ],
//                     ),
//                     Spacer(),
//                   ],
//                 )
//               ],
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

// class MyHomePage extends StatefulWidget {
//   MyHomePage({Key key, this.title}) : super(key: key);
//   final String title;

//   @override
//   _MyHomePageState createState() => _MyHomePageState();
// }

// class _MyHomePageState extends State<MyHomePage> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text(widget.title),
//       ),
//       body: SingleChildScrollView(
//         child: Column(
//           // mainAxisAlignment: MainAxisAlignment.center,
//           children: <Widget>[
//             Image.asset('images/banner_1.png'),
//             Row(
//               crossAxisAlignment: CrossAxisAlignment.baseline,
//               children: <Widget>[
//                 Spacer(),
//                 Column(
//                   children: <Widget>[
//                     IconButton(
//                         icon: Image.asset('images/ib_1.png', height: 80),
//                         onPressed: () {}),
//                     Text('疗养别墅')
//                   ],
//                 ),
//                 Spacer(),
//                 Column(
//                   children: <Widget>[
//                     IconButton(
//                         icon: Image.asset('images/ib_2.png', height: 80),
//                         onPressed: () {}),
//                     Text('会议申请')
//                   ],
//                 ),
//                 Spacer(),
//                 Column(
//                   children: <Widget>[
//                     IconButton(
//                         icon: Image.asset('images/ib_3.png', height: 80),
//                         onPressed: () {}),
//                     Text('别墅产权')
//                   ],
//                 ),
//                 Spacer(),
//                 Column(
//                   children: <Widget>[
//                     IconButton(
//                         icon: Image.asset('images/ib_4.png', height: 80),
//                         onPressed: () {}),
//                     Text('医学疗养')
//                   ],
//                 ),
//                 Spacer(),
//                 Column(
//                   children: <Widget>[
//                     IconButton(
//                         icon: Image.asset('images/ib_5.png', height: 80),
//                         onPressed: () {}),
//                     Text('会长申请')
//                   ],
//                 ),
//                 Spacer(),
//               ],
//             ),
//             Image.asset('images/enterprise.png'),
//             Row(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: <Widget>[
//                 Spacer(),
//                 Column(
//                   children: <Widget>[
//                     Image.asset(
//                       'images/member_1.jpg',
//                       width: 100,
//                     ),
//                     Text(
//                       '￥998.00',
//                       style: TextStyle(color: Colors.orange),
//                     ),
//                   ],
//                 ),
//                 Spacer(),
//                 Column(
//                   children: <Widget>[
//                     Image.asset(
//                       'images/member_2.jpg',
//                       width: 100,
//                     ),
//                     Text(
//                       '￥9800.00',
//                       style: TextStyle(color: Colors.orange),
//                     ),
//                   ],
//                 ),
//                 Spacer(),
//                 Column(
//                   children: <Widget>[
//                     Image.asset(
//                       'images/member_3.jpg',
//                       width: 100,
//                     ),
//                     Text(
//                       '￥198000.00',
//                       style: TextStyle(color: Colors.orange),
//                     ),
//                   ],
//                 ),
//                 Spacer(),
//                 Column(
//                   children: <Widget>[
//                     Image.asset(
//                       'images/member_4.jpg',
//                       width: 100,
//                     ),
//                     Text(
//                       '￥1980000.00',
//                       style: TextStyle(color: Colors.orange),
//                     ),
//                   ],
//                 ),
//                 Spacer(),
//               ],
//             ),
//             //会员免费预定酒店
//             Image.asset('images/member_free.png'),
//             Column(
//               children: <Widget>[
//                 Row(
//                   children: <Widget>[
//                     Spacer(),
//                     Column(
//                       children: <Widget>[
//                         Image.asset(
//                           'images/deal_1.png',
//                           width: 200,
//                         ),
//                         Text(
//                           '五星级康养别墅包吃包住',
//                         ),
//                         Text(
//                           '￥998.00',
//                           style: TextStyle(color: Colors.orange),
//                         ),
//                       ],
//                     ),
//                     Spacer(),
//                     Column(
//                       children: <Widget>[
//                         Image.asset(
//                           'images/deal_2.png',
//                           width: 200,
//                         ),
//                         Text(
//                           '五星级康养别墅包吃包住',
//                         ),
//                         Text(
//                           '￥998.00',
//                           style: TextStyle(color: Colors.orange),
//                         ),
//                       ],
//                     ),
//                     Spacer(),
//                   ],
//                 )
//               ],
//             ),
//             //会员专属会议招商
//             Image.asset('images/member_in.png'),
//             Column(
//               children: <Widget>[
//                 Row(
//                   children: <Widget>[
//                     Spacer(),
//                     Column(
//                       children: <Widget>[
//                         Image.asset(
//                           'images/deal_1.png',
//                           width: 200,
//                         ),
//                         Text(
//                           '五星级康养别墅包吃包住',
//                         ),
//                         Text(
//                           '￥998.00',
//                           style: TextStyle(color: Colors.orange),
//                         ),
//                       ],
//                     ),
//                     Spacer(),
//                     Column(
//                       children: <Widget>[
//                         Image.asset(
//                           'images/deal_2.png',
//                           width: 200,
//                         ),
//                         Text(
//                           '五星级康养别墅包吃包住',
//                         ),
//                         Text(
//                           '￥998.00',
//                           style: TextStyle(color: Colors.orange),
//                         ),
//                       ],
//                     ),
//                     Spacer(),
//                   ],
//                 )
//               ],
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

  String htmlUrl =
      // "https://mall.lechouhui.vip/addons/yun_shop/?menu#/diy?page_id=107&i=1";
      "https://mall.lechouhui.vip/addons/yun_shop/?menu#/diy?page_id=108&i=1";
  // "https://mall.lechouhui.vip/addons/yun_shop/?menu#/liveList?i=1&type=5&mid=64396&shop_id";

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
        title: Text('乐会员'),
      ),
      body: Container(
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
