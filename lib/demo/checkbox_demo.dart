import 'package:flutter/material.dart';

class CheckboxDemo extends StatefulWidget {
  @override
  _CheckboxDemoState createState() => _CheckboxDemoState();
}

class _CheckboxDemoState extends State<CheckboxDemo> {
  bool _checkboxItemA = true;
  bool _checkboxItemB = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('CheckboxDemo'),
        elevation: 0.0,
      ),
      body: Container(
        padding: EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CheckboxListTile(
              // 复选框当前的选中状态
              value: _checkboxItemA,
              // 复选框选中状态发生改变时的回调
              onChanged: (value) {
                setState(() {
                  _checkboxItemA = value;
                });
              },
              // 复选框的标题
              title: Text('CheckBox Item A'),
              // 复选框标题下的描述
              subtitle: Text('description'),
              // 一般放图标
              secondary: Icon(Icons.bookmark),
              // 为true时，title subTitle Secondary 下的icon组件和text组件的颜色都为activeColor
              selected: _checkboxItemA,
              // 复选框选中时的颜色
              activeColor: Colors.pink[100],
            ),
            CheckboxListTile(
              value: _checkboxItemB,
              onChanged: (value) {
                setState(() {
                  _checkboxItemB = value;
                });
              },
              title: Text('CheckBox Item B'),
              subtitle: Text('description'),
              secondary: Icon(Icons.book_online),
              selected: _checkboxItemB,
            ),
          ],
        ),
      ),
    );
  }
}
