import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FindPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Column(
        children: [
          SizedBox(height: 40,),
          Expanded(child: Container(
            width: double.infinity,
            child: ListView.builder(
                itemCount: 100,
                itemExtent: 20,
                itemBuilder: (context, index) {
                  return Text(index.toString());
                }),
          )),
        ],
      ),
      Positioned(top: 0, left: 0, right: 0, child: Container(
        height: 60,
        color: Colors.pink,
      ))
    ]);
  }
}
