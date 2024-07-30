import 'package:flutter/material.dart';

class User extends StatefulWidget {
  const User({Key? key}) : super(key: key);

  @override
  _UserState createState() => _UserState();
}

class _UserState extends State<User> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          const Text('用户中心'),
          ElevatedButton(
            onPressed: () {
              print('登录');
              Navigator.pushNamed(context, '/login');
            },
            child: Text('登录'),
          ),
          const SizedBox(
            height: 30,
          ),
          ElevatedButton(
            onPressed: () {
              print('登录');
              Navigator.pushNamed(context, '/registerFirst');
            },
            child: const Text('注册'),
          )
        ],
      ),
    );
  }
}
