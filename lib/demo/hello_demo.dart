import 'package:flutter/material.dart';

// 定义一个小部件
class Hello extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        'hello word',
        textDirection: TextDirection.ltr,
        style: TextStyle (
          fontSize: 40, 
          fontWeight: FontWeight.bold,
          color: Colors.black87,
        )
      ),
    );
  }
}