//系统dart
import 'package:flutter/material.dart';

//自定义dart
import 'package:flutter_joyrest/pages/index_page.dart';
// //侧边栏
// import 'package:flutter_joyrest/pages/drawers/myzone.dart';
// import 'package:flutter_joyrest/pages/drawers/settings.dart';
// import 'package:flutter_joyrest/pages/drawers/user.dart';
// //初级Flutter
// import 'package:flutter_joyrest/demos/primary/primary.dart';
// import 'package:flutter_joyrest/demos/primary/text_demo.dart';
// import 'package:flutter_joyrest/demos/primary/button_demo.dart';
// import 'package:flutter_joyrest/demos/primary/image_demo.dart';
// import 'package:flutter_joyrest/demos/primary/checkbox_demo.dart';
// import 'package:flutter_joyrest/demos/primary/customdialogdemo.dart';
// import 'package:flutter_joyrest/demos/primary/radiodemo.dart';

// // 中级Flutter
// import 'package:flutter_joyrest/demos/middle/middle.dart';
// import 'package:flutter_joyrest/demos/middle/container_demo.dart';
// import 'package:flutter_joyrest/demos/middle/swiper_demo.dart';

// // 高级Flutter
// import 'package:flutter_joyrest/demos/senior/senior.dart';
// import 'package:flutter_joyrest/demos/senior/http_demo.dart';
// import 'package:flutter_joyrest/demos/senior/datepicker.dart';
// import 'package:flutter_joyrest/demos/senior/thirddatepicker.dart';

// // 应用Flutter
// import 'package:flutter_joyrest/demos/application/application.dart';
// import 'package:flutter_joyrest/demos/application/login.dart';
// import 'package:flutter_joyrest/demos/application/register.dart';
// import 'package:flutter_joyrest/demos/application/registerNext.dart';
// import 'package:flutter_joyrest/demos/application/registerThird.dart';
// import 'package:flutter_joyrest/demos/application/textfield_demo.dart';
// import 'package:flutter_joyrest/demos/application/myprofile.dart';

import 'package:flutter_joyrest/navs/care_home.dart';
import 'package:flutter_joyrest/navs/meeting_apply.dart';
import 'package:flutter_joyrest/navs/home_asset.dart';
import 'package:flutter_joyrest/navs/medical_care.dart';
import 'package:flutter_joyrest/navs/member_apply.dart';
// import 'package:flutter_joyrest/demos/testDemo.dart';

/*
* 全局路由配置，即路由跳转
*/
final routes = {
  '/': (context, {arguments}) => IndexPage(),
  '/care_home': (context, {arguments}) => CareHome(),
  '/meeting_apply': (context, {arguments}) => MeetingApply(),
  '/home_asset': (context, {arguments}) => HomeAsset(),
  '/medical_care': (context, {arguments}) => MedicalCare(),
  '/member_apply': (context, {arguments}) => MemberApply(),
  // '/swiperdemo': (context, {arguments}) => SwiperDemoPage(),
  // //侧边栏
  // '/user': (context, {arguments}) => UserPage(),
  // '/settings': (context, {arguments}) => SettingsPage(),
  // '/myzone': (context, {arguments}) => ZonePage(),

  // //初级flutter
  // '/primary': (context, {arguments}) => PrimaryPage(),
  // '/textdemo': (context, {arguments}) => TextDemo(),
  // '/buttondemo': (context, {arguments}) => ButttonDemo(),
  // '/imagedemo': (context, {arguments}) => ImageDemo(),
  // '/checkboxdemo': (context, {arguments}) => CheckBoxDemo(),
  // '/customdialogdemo': (context, {arguments}) => CustomDialogDemoPage(),
  // '/radiodemo': (context, {arguments}) => RadioDemoPage(),

  // // 中级flutter
  // '/middle': (context, {arguments}) => MiddlePage(),
  // '/containerdemo': (context, {arguments}) => ContainerDemo(),

  // // 高级flutter
  // '/senior': (context, {arguments}) => SeniorPage(),
  // '/httpdemo': (context, {arguments}) => HttpDemo(),
  // '/datepickdemo': (context, {arguments}) => DatePickerDemoPage(),
  // '/thirddatepickdemo': (context, {arguments}) => ThirdDatePickerDemoPage(),
  // //应用flutter
  // '/application': (context, {arguments}) => ApplicationPage(),
  // '/loginpage': (context, {arguments}) => LoginPage(),
  // '/register': (context, {arguments}) => RegisterPage(),
  // '/registernext': (context, {arguments}) => RegisterNextPage(),
  // '/registerthird': (context, {arguments}) => RegisterThirdPage(),
  // '/textfielddemo': (context, {arguments}) => TextFieldDemoPage(),
  // '/myprofile': (context, {arguments}) => MyProfilePage(),

  // '/appbardemo': (context, {arguments}) => AppBarPage(),
  // '/tabbarcontroller': (context, {arguments}) => TabControllerPage(),

  // '/buttondemo': (context, {arguments}) => ButtonDemoPage(),

  // '/formdemonew': (context, {arguments}) => FormDemoNewPage(),

  // '/dialogdemo': (context, {arguments}) => DialogDemoPage(),
  // '/customdialog': (context, {arguments}) => CustomDialogDemoPage(),
  // '/httprequest': (context, {arguments}) => HttpRequestDemoPage(),
  // '/recorddemo': (context, {arguments}) => RecordDemoPage(),
  // '/newsdemo': (context, {arguments}) => NewsDemoPage(),

  // '/listviewdemo': (context, {arguments}) => ListViewDemo(),
  // '/settingspage': (context, {arguments}) => SettingsPage(),
  // '/submit': (context, {arguments}) => SubmitPage(),
  // '/search': (context, {arguments}) => SearchPage(arguments: arguments),
  // '/goods': (context, {arguments}) => GoodsPage(),
  // '/detail': (context, {arguments}) => DetailPage(arguments: arguments),
};

//固定写法
var onGenerateRoute = (RouteSettings settings) {
  //统一处理
  final String name = settings.name;
  print(settings.name);
  final Function pageContentBuilder = routes[name];
  if (pageContentBuilder != null) {
    if (settings.arguments != null) {
      final Route route = MaterialPageRoute(
          builder: (context) =>
              pageContentBuilder(context, arguments: settings.arguments));
      return route;
    } else {
      final Route route = MaterialPageRoute(
        builder: (context) => pageContentBuilder(context),
      );
      return route;
    }
  }
};
