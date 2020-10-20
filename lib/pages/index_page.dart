import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

//自己 写的 的dart
import 'cart_page.dart';
import 'category_page.dart';
import 'home_page.dart';
import 'mba_page.dart';
import 'member_page.dart';

class IndexPage extends StatefulWidget {
  IndexPage({Key key}) : super(key: key);

  @override
  _IndexPageState createState() => _IndexPageState();
}

class _IndexPageState extends State<IndexPage> {
  //显示底部标题栏，设置icon和标题
  final List<BottomNavigationBarItem> _bottomTabs = [
    BottomNavigationBarItem(
        icon: Icon(CupertinoIcons.star_fill), title: Text('乐会员')),
    BottomNavigationBarItem(
        icon: Icon(CupertinoIcons.home), title: Text('乐养院')),
    BottomNavigationBarItem(
        icon: Icon(CupertinoIcons.shopping_cart), title: Text('乐商院')),
    BottomNavigationBarItem(
        icon: Icon(CupertinoIcons.play_rectangle_fill), title: Text('乐道院')),
    BottomNavigationBarItem(
        icon: Icon(CupertinoIcons.profile_circled), title: Text('我'))
  ];
  //页面
  final List _tabBodies = [
    HomePage(),
    CategoryPage(),
    CartPage(),
    MbaPage(),
    MemberPage()
  ];
  //当前的索引
  int _currentIndex = 0;
  //当前的索引页
  var _currentPage;

  @override
  void initState() {
    // 初始化
    _currentPage = _tabBodies[_currentIndex];
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //背景色
      backgroundColor: Color.fromRGBO(244, 245, 245, 1.0),
      //标题栏 全局AppBar
      // appBar: AppBar(
      //   title: Text('Hello'),
      // ),
      //主体
      body: Container(
        child: Center(
          child: _currentPage,
        ),
      ),

      //左侧边栏
      drawer: leftDrawer(context),

      //底部导航栏
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: _currentIndex,
        items: _bottomTabs,
        onTap: (index) {
          //修改当前状态
          setState(() {
            _currentIndex = index;
            _currentPage = _tabBodies[_currentIndex];
          });
        },
      ),
    );
  }
}

//抽离出的左侧边栏
Widget leftDrawer(context) {
  return Drawer(
      child:
          // Text('左侧侧边栏'),
          Column(
    children: <Widget>[
      Row(
        children: <Widget>[
          Expanded(
            child: UserAccountsDrawerHeader(
              accountName: Text('Xumks'),
              accountEmail: Text('xumk@vip.qq.com'),
              currentAccountPicture: CircleAvatar(
                backgroundImage:
                    NetworkImage("https://www.itying.com/images/flutter/3.png"),
              ),
              decoration: BoxDecoration(
                // color: Colors.yellow,
                image: DecorationImage(
                    image: NetworkImage(
                      "https://www.itying.com/images/flutter/4.png",
                    ),
                    fit: BoxFit.cover),
              ),
            ),
          ),
        ],
      ),
      ListTile(
        leading: CircleAvatar(
          child: Icon(Icons.star),
        ),
        title: Text('我的空间'),
        onTap: () {
          Navigator.of(context).pop(); //隐藏侧边栏
          Navigator.pushNamed(context, '/myzone'); //跳转我的空间
        },
      ),
      Divider(),
      ListTile(
        leading: CircleAvatar(
          child: Icon(Icons.person),
        ),
        title: Text('用户中心'),
        onTap: () {
          Navigator.of(context).pop(); //隐藏侧边栏
          Navigator.pushNamed(context, '/user'); //跳转用户中心
        },
      ),
      Divider(),
      ListTile(
        leading: CircleAvatar(
          child: Icon(Icons.settings),
        ),
        title: Text('设置'),
        onTap: () {
          Navigator.of(context).pop(); //隐藏侧边栏
          Navigator.pushNamed(context, '/settings'); //跳转设置
        },
      )
    ],
  ));
}
