// import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import '../pages/tabs.dart';

import '../pages/user/login.dart';
import '../pages/shop.dart';
import '../pages/user/registerFirst.dart';
import '../pages/user/registerSecond.dart';
import '../pages/user/registerThird.dart';

//1.配置路由
Map routes = {
  '/': (contxt) => const Tabs(),
  '/login': (contxt) => const LoginPage(),
  '/shop': (contxt, {arguments}) => ShopPage(arguments: arguments),
  '/registerFirst': (contxt, {arguments}) => const RegisterFirst(),
  '/registerSecond': (contxt, {arguments}) => const registerSecond(),
  '/registerThird': (contxt, {arguments}) => const RegisterThird(),
};
//2.配置onGenerateRoute
var onGenerateRoute = (RouteSettings settings) {
  final String? name = settings.name;
  final Function? pageContentBuilder = routes[name];
  if (pageContentBuilder != null) {
    if (settings.arguments != null) {
      final Route route = CupertinoPageRoute(
          builder: (context) =>
              pageContentBuilder(context, arguments: settings.arguments));
      return route;
    } else {
      final Route route =
          CupertinoPageRoute(builder: (context) => pageContentBuilder(context));
      return route;
    }
  }
  return null;
};
