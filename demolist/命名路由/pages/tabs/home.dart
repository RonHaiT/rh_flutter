import 'package:flutter/material.dart';

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
