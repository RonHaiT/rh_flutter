import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'tabs/category.dart';
import 'tabs/home.dart';
import 'tabs/setting.dart';
import 'tabs/user.dart';
import 'tabs/message.dart';

class Tabs extends StatefulWidget {
  const Tabs({Key? key}) : super(key: key);

  @override
  _TabsPageState createState() => _TabsPageState();
}

class _TabsPageState extends State<Tabs> {
  int _currentIndex = 0;
  final List<Widget> _pages = const [
    Home(),
    Category(),
    Message(),
    Setting(),
    User()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter 路由'),
      ),
      drawer: const Drawer(
          child: Column(
        children: [
          // SizedBox(
          //   height: 60,
          // ),
          Row(children: [
            Expanded(
                flex: 1,
                child: DrawerHeader(
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: NetworkImage(
                                'https://www.apple.com.cn/education/college-students/mac/images/overview/gc_ipad_launch__e4cp982z732a_large_2x.jpg'),
                            fit: BoxFit.cover)),
                    child: Column(
                      children: [
                        ListTile(
                          leading: CircleAvatar(
                              backgroundImage: NetworkImage(
                                  'https://c-ssl.dtstatic.com/uploads/blog/202208/15/20220815162412_00e47.thumb.300_0.jpeg_webp')),
                          title: Text(
                            '头像',
                            style: TextStyle(color: Colors.white),
                          ),
                        )
                      ],
                    )))
          ]),
          ListTile(
            leading: CircleAvatar(
              child: Icon(Icons.people),
            ),
            title: Text('个人中心'),
          ),
          Divider(),
          ListTile(
            leading: CircleAvatar(
              child: Icon(Icons.settings),
            ),
            title: Text('系统设置'),
          ),
          Divider(),
        ],
      )),
      endDrawer: const Drawer(
        child: Text('右侧侧边栏'),
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
          BottomNavigationBarItem(icon: Icon(Icons.message_sharp), label: '消息'),
          BottomNavigationBarItem(icon: Icon(Icons.settings), label: '设置'),
          BottomNavigationBarItem(icon: Icon(Icons.people), label: '用户'),
        ],
      ),
      floatingActionButton: Container(
        width: 60,
        height: 60,
        padding: const EdgeInsets.all(4),
        margin: const EdgeInsets.only(top: 15),
        decoration: BoxDecoration(
            color: Colors.white, borderRadius: BorderRadius.circular(30)),
        child: FloatingActionButton(
          backgroundColor: _currentIndex == 2 ? Colors.red : Colors.grey[100],
          onPressed: () {
            setState(() {
              _currentIndex = 2;
            });
          },
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
          child: Icon(
            Icons.add,
            color: _currentIndex == 2 ? Colors.white : Colors.grey,
            size: 30,
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      body: _pages[_currentIndex],
    );
  }
}
