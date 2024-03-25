import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:wangyiyun/page/roaming_page.dart';
import 'package:wangyiyun/widget/CusBottomNavigationBar.dart';
import 'blog_page.dart';
import 'dynamic_page.dart';
import 'find_page.dart';
import 'mine_page.dart';

class MyHomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyHomePage();
  }
}

class _MyHomePage extends State<MyHomePage> {
  List<Widget> pages = [
    FindPage(),
    BlogPage(),
    RoamingPage(),
    DynamicPage(),
    MinePage()
  ];
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[currentIndex],
      bottomNavigationBar: CusBottomNavigationBar(
        onTap: (e) {
          setState(() {
            currentIndex = e;
          });
        },
        currentIndex: currentIndex,
      ),
    );
  }
}
