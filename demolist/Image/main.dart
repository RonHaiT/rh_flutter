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
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Title'),
      ),
      body: Center(
          child: Container(
        width: 300,
        height: 300,
        decoration: BoxDecoration(
            color: Colors.pink, borderRadius: BorderRadius.circular(150)),
        child: Image.network(
          alignment: Alignment.center,
          'https://doc.ronhai.com/bg.png',
          fit: BoxFit.cover,
        ),
      )),
    );
  }
}
