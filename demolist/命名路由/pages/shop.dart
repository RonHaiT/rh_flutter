import 'package:flutter/material.dart';

class ShopPage extends StatefulWidget {
  //命名路由传值
  final Map arguments;
  const ShopPage({Key? key, required this.arguments}) : super(key: key);

  @override
  _ShopPageState createState() => _ShopPageState();
}

class _ShopPageState extends State<ShopPage> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    print(widget.arguments);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Shop'),
      ),
      body: const Center(
        child: Text('shop页面'),
      ),
    );
  }
}
