import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'IconFontIcons.dart';

//枚举
enum CusBottomNavigationBarType {
  find,
  blog,
  roaming,
  dynamic,
  mine,
}

class CusBottomNavigationBar extends StatefulWidget {
  final Function(int index) onTap;
  final int currentIndex;

  CusBottomNavigationBar(
      {super.key, required this.onTap, required this.currentIndex});

  @override
  State<StatefulWidget> createState() {
    return _MyHomePageState();
  }
}

class _MyHomePageState extends State<CusBottomNavigationBar> {
  final Color redColor = Colors.red;
  final Color greyColor = Colors.grey;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Container(
        height: 50,
        color: Colors.white,
        child: Row(children: [
          Expanded(
            child: GestureDetector(
              child: Column(
                children: [
                  Icon(
                    IconFontIcons.iconWangyiyun1,
                    size: 25,
                    color: widget.currentIndex ==
                            CusBottomNavigationBarType.find.index
                        ? redColor
                        : greyColor,
                  ),
                  Text(
                    "发现",
                    style: TextStyle(
                      fontSize: 12,
                      color: widget.currentIndex ==
                              CusBottomNavigationBarType.find.index
                          ? redColor
                          : greyColor,
                    ),
                  )
                ],
              ),
              onTap: () {
                widget.onTap(CusBottomNavigationBarType.find.index);
              },
            ),
          ),
          Expanded(
            child: GestureDetector(
              child: Column(
                children: [
                  Icon(
                    IconFontIcons.iconLeida,
                    size: 26,
                    color: widget.currentIndex ==
                            CusBottomNavigationBarType.blog.index
                        ? redColor
                        : greyColor,
                  ),
                  Text(
                    "博客",
                    style: TextStyle(
                      fontSize: 12,
                      color: widget.currentIndex ==
                              CusBottomNavigationBarType.blog.index
                          ? redColor
                          : greyColor,
                    ),
                  )
                ],
              ),
              onTap: () {
                widget.onTap(CusBottomNavigationBarType.blog.index);
              },
            ),
          ),
          Expanded(
            child: GestureDetector(
              child: Column(
                children: [
                  Icon(
                    IconFontIcons.iconDiantai,
                    size: 26,
                    color: widget.currentIndex ==
                            CusBottomNavigationBarType.roaming.index
                        ? redColor
                        : greyColor,
                  ),
                  Text(
                    "漫游",
                    style: TextStyle(
                      fontSize: 12,
                      color: widget.currentIndex ==
                              CusBottomNavigationBarType.roaming.index
                          ? redColor
                          : greyColor,
                    ),
                  )
                ],
              ),
              onTap: () {
                widget.onTap(CusBottomNavigationBarType.roaming.index);
              },
            ),
          ),
          Expanded(
            child: GestureDetector(
              child: Column(
                children: [
                  Icon(
                    IconFontIcons.iconDongtai,
                    size: 26,
                    color: widget.currentIndex ==
                            CusBottomNavigationBarType.dynamic.index
                        ? redColor
                        : greyColor,
                  ),
                  Text(
                    "动态",
                    style: TextStyle(
                      fontSize: 12,
                      color: widget.currentIndex ==
                              CusBottomNavigationBarType.dynamic.index
                          ? redColor
                          : greyColor,
                    ),
                  )
                ],
              ),
              onTap: () {
                widget.onTap(CusBottomNavigationBarType.dynamic.index);
              },
            ),
          ),
          Expanded(
            child: GestureDetector(
              child: Column(
                children: [
                  Icon(
                    IconFontIcons.iconYinle,
                    size: 26,
                    color: widget.currentIndex ==
                            CusBottomNavigationBarType.mine.index
                        ? redColor
                        : greyColor,
                  ),
                  Text(
                    "我的",
                    style: TextStyle(
                      fontSize: 12,
                      color: widget.currentIndex ==
                              CusBottomNavigationBarType.mine.index
                          ? redColor
                          : greyColor,
                    ),
                  )
                ],
              ),
              onTap: () {
                widget.onTap(CusBottomNavigationBarType.mine.index);
              },
            ),
          )
        ]),
      ),
    );
  }
}
