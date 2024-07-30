import 'package:flutter/material.dart';

import 'common/iconfont.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Study Demo',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Title'),
        ),
        body: Center(
            child: Column(
          children: [
            ClipOval(
              child: Image.network('https://doc.ronhai.com/bg.png',
                  width: 150.0, height: 150.0, fit: BoxFit.cover),
            ),
            const Icon(
              IconFont.view,
              color: Colors.red,
              size: 30,
            )
          ],
        )));
  }
}
