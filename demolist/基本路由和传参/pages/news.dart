import 'package:flutter/material.dart';

class NewsPage extends StatefulWidget {
  final String title;
  final int nid;
  const NewsPage({super.key, this.title = '新闻中心', required this.nid});

  @override
  _NewsPageState createState() => _NewsPageState();
}

class _NewsPageState extends State<NewsPage> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    print(widget.nid);
    print(widget.title);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pop(context);
        },
        child: const Icon(Icons.home),
      ),
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: const Center(),
    );
  }
}
