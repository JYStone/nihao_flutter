import 'package:flutter/material.dart';

class RadioDemo extends StatefulWidget {
  @override
  _RadioDemoState createState() => _RadioDemoState();
}

class _RadioDemoState extends State<RadioDemo> {
  int _radioGroupA = 0;
  void _handleRadioValueChanged(int value) {
    setState(() {
      _radioGroupA = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('RadioDemo'),
        elevation: 0.0,
      ),
      body: Container(
        padding: EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('radioGroupValue: $_radioGroupA'),
            SizedBox(
              height: 32.0,
            ),
            RadioListTile(
              value: 0,
              groupValue: _radioGroupA,
              onChanged: _handleRadioValueChanged,
              title: Text('option A'),
              subtitle: Text('description'),
              secondary: Icon(Icons.filter_1),
              selected: _radioGroupA == 0,
              controlAffinity: ListTileControlAffinity.leading,
            ),
            RadioListTile(
              value: 1,
              groupValue: _radioGroupA,
              onChanged: _handleRadioValueChanged,
              title: Text('option B'),
              subtitle: Text('description'),
              secondary: Icon(Icons.filter_2),
              selected: _radioGroupA == 1,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // Radio(
                //   // 单选按钮的标记值，当groupValue与value相同时，按钮才是选中状态
                //   value: 0,
                //   // 单选按钮组的选中值
                //   groupValue: _radioGroupA,
                //   // 单选按钮的监听回调
                //   onChanged: _handleRadioValueChanged,
                //   // 单选按钮选中时的颜色
                //   activeColor: Colors.black,
                // ),
                // Radio(
                //   value: 1,
                //   groupValue: _radioGroupA,
                //   onChanged: _handleRadioValueChanged,
                //   activeColor: Colors.black,
                // ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
