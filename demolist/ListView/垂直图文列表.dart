import 'package:flutter/material.dart';

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
          title: const Text(
            'Flutter ListView',
            style: TextStyle(color: Colors.white),
          ),
          backgroundColor: Colors.red,
        ),
        body: ListView(
          children: [
            Image.network("https://www.itying.com/images/flutter/1.png"),
            Container(
              height: 44,
              padding: EdgeInsets.fromLTRB(0, 10, 0, 10),
              child: const Text(
                '我是一个标题',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 18,
                ),
              ),
            ),
            Image.network("https://www.itying.com/images/flutter/2.png"),
            Container(
              height: 44,
              padding: const EdgeInsets.fromLTRB(0, 10, 0, 10),
              child: const Text(
                '我是一个标题',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 18,
                ),
              ),
            ),
            Image.network("https://www.itying.com/images/flutter/1.png"),
          ],
        ));
  }
}
