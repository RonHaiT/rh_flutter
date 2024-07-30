import 'package:flutter/material.dart';

class Category extends StatefulWidget {
  const Category({Key? key}) : super(key: key);

  @override
  _CategoryState createState() => _CategoryState();
}

class _CategoryState extends State<Category> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          ElevatedButton(
              onPressed: () {
                //命名路由跳转
                Navigator.pushNamed(context, '/search');
              },
              child: const Text('命名路由跳转搜索')),
        ],
      ),
    );
  }
}
