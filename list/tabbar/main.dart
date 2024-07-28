import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Study Demo',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;
  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(
            Icons.menu,
            color: Colors.white,
          ),
          onPressed: () {
            print('左侧按钮图标');
          },
        ),
        backgroundColor: Colors.red,
        actions: [
          IconButton(
              onPressed: () {
                print('更多');
              },
              icon: const Icon(
                Icons.more_horiz,
                color: Colors.white,
              )),
          IconButton(
              onPressed: () {
                print('搜索');
              },
              icon: const Icon(
                Icons.search,
                color: Colors.white,
              ))
        ],
        title: const Text(
          'Flutter 滑动导航',
          style: TextStyle(color: Colors.white),
        ),
        bottom: TabBar(
            controller: _tabController,
            labelColor: Colors.white,
            unselectedLabelColor: Colors.white,
            indicatorColor: Colors.red, //下标颜色
            tabs: const [
              Tab(
                child: Text('关注'),
              ),
              Tab(
                child: Text('热门'),
              ),
              Tab(
                child: Text('视频'),
              ),
            ]),
      ),
      body: TabBarView(
        controller: _tabController,
        children: [
          ListView(
            children: const [
              ListTile(
                title: Text('我是关注列表'),
              ),
            ],
          ),
          ListView(
            children: const [
              ListTile(
                title: Text('我是热门列表'),
              ),
            ],
          ),
          ListView(
            children: const [
              ListTile(
                title: Text('我是视频列表'),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
