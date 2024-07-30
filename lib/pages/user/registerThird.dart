import 'package:flutter/material.dart';
import '../tabs.dart';

class RegisterThird extends StatefulWidget {
  const RegisterThird({super.key});

  @override
  _RegisterThirdState createState() => _RegisterThirdState();
}

class _RegisterThirdState extends State<RegisterThird> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('注册第三步'),
      ),
      body: Center(
        child: Column(
          children: [
            const Text('注册第三步'),
            const SizedBox(
              height: 30,
            ),
            ElevatedButton(
                onPressed: () {
                  //返回根页面
                  Navigator.of(context).pushAndRemoveUntil(
                      MaterialPageRoute(builder: (BuildContext context) {
                    return const Tabs(index: 4);
                  }), (route) => false);
                },
                child: const Text('完成注册'))
          ],
        ),
      ),
    );
  }
}
