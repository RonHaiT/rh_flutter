import 'package:flutter/material.dart';

class registerSecond extends StatefulWidget {
  const registerSecond({super.key});

  @override
  _RegisterSecondState createState() => _RegisterSecondState();
}

class _RegisterSecondState extends State<registerSecond> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('注册第二步'),
      ),
      body: Center(
        child: Column(
          children: [
            const Text('注册第二步'),
            ElevatedButton(
                onPressed: () {
                  // Navigator.pushNamed(context, '/registerThird');
                  //替换路由跳转,第二步替换了后就直接到第一步去了
                  Navigator.of(context).pushReplacementNamed('/registerThird');
                },
                child: const Text('下一步'))
          ],
        ),
      ),
    );
  }
}
