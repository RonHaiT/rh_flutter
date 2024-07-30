import 'package:flutter/material.dart';
import 'router/index.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Study Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.red,
        ),
      ),
      //初始化路由
      initialRoute: '/',
      //2.路由生效
      onGenerateRoute: onGenerateRoute,
    );
  }
}
