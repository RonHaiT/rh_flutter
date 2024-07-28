import 'package:flutter/material.dart';
import '../../tools/KeepAliveWrapper.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> with SingleTickerProviderStateMixin {
  late TabController _tabController;
  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);

    _tabController.addListener(() {
      //会获取两次
      // print(_tabController.index);
      if (_tabController.animation!.value == _tabController.index) {
        print(_tabController.index);
      }
    });
  }

  @override
  void dispose() {
    // 组件销毁触发
    super.dispose();
    _tabController.dispose();
    print('销毁');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(50),
        child: AppBar(
          title: TabBar(
              controller: _tabController,
              // labelColor: Colors.white,
              // unselectedLabelColor: Colors.white,
              // indicatorColor: Colors.red, //下标颜色
              indicatorSize: TabBarIndicatorSize.tab, // 保持指示器与标签大小一致
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
          // backgroundColor: Colors.red,
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: [
          KeepAliveWrapper(
            child: ListView(
              children: const [
                ListTile(
                  title: Text('我是关注列表'),
                ),
                ListTile(
                  title: Text('我是关注列表'),
                ),
                ListTile(
                  title: Text('我是关注列表'),
                ),
                ListTile(
                  title: Text('我是关注列表'),
                ),
                ListTile(
                  title: Text('我是关注列表'),
                ),
                ListTile(
                  title: Text('我是关注列表'),
                ),
                ListTile(
                  title: Text('我是关注列表'),
                ),
                ListTile(
                  title: Text('我是关注列表'),
                ),
                ListTile(
                  title: Text('我是关注列表'),
                ),
                ListTile(
                  title: Text('我是关注列表'),
                ),
                ListTile(
                  title: Text('我是关注列表'),
                ),
                ListTile(
                  title: Text('我是关注列表333'),
                ),
                ListTile(
                  title: Text('我是关注列表222'),
                ),
                ListTile(
                  title: Text('我是关注列表111'),
                ),
                ListTile(
                  title: Text('我是关注列表123'),
                ),
              ],
            ),
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
                title: Text('我是热门列表'),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
