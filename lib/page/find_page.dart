import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FindPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: Stack(
        fit: StackFit.expand,
        children: [
          ListView.builder(
              itemCount: 100,
              itemExtent: 20,
              itemBuilder: (context, index) {
                return Text(index.toString());
              }),
          Positioned(
              top: 0,
              left: 0,
              right: 0,
              child: Container(
                height: 80,
                width: double.infinity,
                color: Colors.pink,
                child: Text('122'),
              )),
          Text('1222'),
        ],
      ),
    );
  }
}
