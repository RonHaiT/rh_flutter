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
        body: SizedBox(
          height: 180,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: <Widget>[
              Container(
                width: 180.0,
                color: Colors.blue,
              ),
              Container(
                width: 180.0,
                color: Colors.orange,
                child: Column(
                  children: <Widget>[
                    Image.network(
                        "https://www.itying.com/images/flutter/1.png"),
                    const Text('我是一个文本')
                  ],
                ),
              ),
              Container(
                width: 180.0,
                color: Colors.blue,
              ),
              Container(
                width: 180.0,
                color: Colors.deepOrange,
              ),
              Container(
                width: 180.0,
                color: Colors.deepPurpleAccent,
              ),
            ],
          ),
        ));
  }
}
