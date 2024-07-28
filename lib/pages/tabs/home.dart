import 'package:flutter/material.dart';
import 'package:rh_components/pages/search.dart';
import 'package:rh_components/pages/form.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  get builder => null;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          ElevatedButton(
              onPressed: () {
                //基本路由跳转
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (BuildContext context) {
                    return const Search();
                  },
                ));
              },
              child: const Text('基本路由跳转')),
          const SizedBox(
            height: 30,
          ),
          ElevatedButton(
              onPressed: () {
                //基本路由跳转
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (BuildContext context) {
                    return const Search();
                  },
                ));
              },
              child: const Text('表单页面跳转'))
        ],
      ),
    );
  }
}
