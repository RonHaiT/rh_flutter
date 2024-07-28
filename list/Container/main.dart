import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

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
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter Container'),
      ),
      body: Center(
        child: Container(
          width: 300,
          height: 300,
          padding: const EdgeInsets.all(10),
          alignment: Alignment.center,
          decoration: BoxDecoration(
              color: Colors.redAccent,
              //边框
              border: Border.all(color: Colors.pink, width: 30),
              //圆角
              borderRadius: BorderRadius.circular(30),
              //阴影
              boxShadow: const [
                BoxShadow(
                    color: Colors.amber,
                    offset: Offset(20, 10),
                    blurRadius: 10.0) //羽化值
              ],
              gradient: const RadialGradient(colors: Colors.primaries)),
          child: const Text(
            'test',
            style: TextStyle(color: Colors.white, fontSize: 30),
          ),
        ),
      ),
    );
  }
}
