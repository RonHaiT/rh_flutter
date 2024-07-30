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
    return Center(
      child: Column(
        children: [
          ElevatedButton(
              onPressed: () {
                //命名路由跳转
                Navigator.pushNamed(context, '/shop',
                    arguments: {'title': 'shop页面', 'fid': 22});
              },
              child: const Text('命名路由传值shop')),
        ],
      ),
    );
  }
}
