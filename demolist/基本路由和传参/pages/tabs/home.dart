import 'package:flutter/material.dart';
import 'package:rh_components/pages/user/registerFirst.dart';
import 'package:rh_components/pages/user/search.dart';
import 'package:rh_components/pages/user/login.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  get builder => null;

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Column(
        children: [Text('首页')],
      ),
    );
  }
}
