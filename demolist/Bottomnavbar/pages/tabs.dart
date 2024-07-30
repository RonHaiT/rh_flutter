import 'package:flutter/material.dart';
import 'tabs/category.dart';
import 'tabs/home.dart';
import 'tabs/setting.dart';
import 'tabs/user.dart';

class Tabs extends StatefulWidget {
  const Tabs({Key? key}) : super(key: key);

  @override
  _TabsPageState createState() => _TabsPageState();
}

class _TabsPageState extends State<Tabs> {
  int _currentIndex = 0;
  final List<Widget> _pages = const [Home(), Category(), Setting(), User()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter BottomNavigationBar'),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        selectedItemColor: Colors.red,
        unselectedItemColor: Colors.grey,
        iconSize: 30,
        type: BottomNavigationBarType.fixed, //如果底部有4个或者以上需要配置
        onTap: (index) {
          print(index);
          setState(() {
            _currentIndex = index;
          });
        },
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: '首页'),
          BottomNavigationBarItem(icon: Icon(Icons.category), label: '分类'),
          BottomNavigationBarItem(icon: Icon(Icons.settings), label: '设置'),
          BottomNavigationBarItem(icon: Icon(Icons.people), label: '用户'),
        ],
      ),
      body: _pages[_currentIndex],
    );
  }
}
