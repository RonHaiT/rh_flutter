import 'package:flutter/material.dart';
import '../pages/tabs.dart';
import '../pages/news.dart';
import '../pages/search.dart';
import '../pages/form.dart';
import '../pages/shop.dart';

//1.配置路由
Map routes = {
  '/': (contxt) => const Tabs(),
  '/search': (contxt) => const SearchPage(),
  '/news': (contxt) => const NewsPage(),
  '/form': (contxt, {arguments}) => FormPage(arguments: arguments),
  '/shop': (contxt, {arguments}) => ShopPage(arguments: arguments),
};
//2.配置onGenerateRoute
var onGenerateRoute = (RouteSettings settings) {
  final String? name = settings.name;
  final Function? pageContentBuilder = routes[name];
  if (pageContentBuilder != null) {
    if (settings.arguments != null) {
      final Route route = MaterialPageRoute(
          builder: (context) =>
              pageContentBuilder(context, arguments: settings.arguments));
      return route;
    } else {
      final Route route =
          MaterialPageRoute(builder: (context) => pageContentBuilder(context));
      return route;
    }
  }
  return null;
};
