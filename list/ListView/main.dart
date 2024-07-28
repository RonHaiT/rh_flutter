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
          // padding: EdgeInsets.all(10),
          children: const [
            ListTile(
              leading: Icon(
                Icons.assessment,
                color: Colors.red,
              ),
              title: Text('全部订单'),
            ),
            Divider(),
            ListTile(
              leading: Icon(
                Icons.payment,
                color: Colors.green,
              ),
              title: Text('待付款'),
            ),
            Divider(),
            ListTile(
              leading: Icon(
                Icons.local_activity,
                color: Colors.amber,
              ),
              title: Text('待收货'),
            ),
            Divider(),
            ListTile(
              leading: Icon(
                Icons.favorite,
                color: Colors.lightBlueAccent,
              ),
              title: Text('我的收藏'),
            ),
            Divider(),
            ListTile(
              leading: Icon(
                Icons.people,
                color: Colors.black54,
              ),
              title: Text('在线客服'),
            ),
            Divider(),
          ],
        ));
  }
}
