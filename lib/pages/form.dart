import 'package:flutter/material.dart';

class Form extends StatefulWidget {
  const Form({Key? key}) : super(key: key);

  @override
  _FormState createState() => _FormState();
}

class _FormState extends State<Form> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('表单页面'),
      ),
      body: const Center(
        child: Text('我是表单页面'),
      ),
    );
  }
}
