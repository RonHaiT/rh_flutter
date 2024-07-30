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
            ListTile(
              leading:
                  Image.network("https://www.itying.com/images/flutter/1.png"),
              title: const Text('全部订单'),
              subtitle: const Text('外媒：特朗普已与泽连斯基通话，承诺“将结束俄乌冲'),
            ),
            const Divider(),
            ListTile(
              leading:
                  Image.network("https://www.itying.com/images/flutter/2.png"),
              title: const Text('待付款'),
            ),
            const Divider(),
            ListTile(
              leading:
                  Image.network("https://www.itying.com/images/flutter/3.png"),
              title: const Text('待收货'),
              subtitle: const Text('航空公司开始慢慢复飞 此前技术故障导致全球航空出'),
            ),
            const Divider(),
            ListTile(
              leading: const Text('宝马发布2023'),
              trailing:
                  Image.network("https://www.itying.com/images/flutter/4.png"),
              subtitle: const Text('航空公司开始慢慢复飞 此前技术故障航空出'),
            ),
            const Divider(),
            ListTile(
              leading:
                  Image.network("https://www.itying.com/images/flutter/5.png"),
              title: const Text('在线客服'),
            ),
            const Divider(),
          ],
        ));
  }
}
