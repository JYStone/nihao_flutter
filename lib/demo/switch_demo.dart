import 'package:flutter/material.dart';

class SwitchDemo extends StatefulWidget {
  @override
  _SwitchDemoState createState() => _SwitchDemoState();
}

class _SwitchDemoState extends State<SwitchDemo> {
  bool _switchItemA = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('SwitchDemo'),
        elevation: 0.0,
      ),
      body: Container(
        padding: EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SwitchListTile(
              value: _switchItemA,
              onChanged: (value) {
                setState(() {
                  _switchItemA = value;
                });
              },
              title: Text('Switch Item A'),
              subtitle: Text('Description'),
              secondary:
                  Icon(_switchItemA ? Icons.visibility : Icons.visibility_off),
              selected: _switchItemA,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  _switchItemA ? '😁' : '😿',
                  style: TextStyle(fontSize: 32.0),
                ),
                Switch(
                    activeColor: Colors.pink[300],
                    activeTrackColor: Colors.yellow,
                    inactiveTrackColor: Colors.green,
                    inactiveThumbColor: Colors.red,
                    // value 为true时，开关按钮圆点图片效果
                    // inactiveThumbImage: ,
                    // value 为false时，开关按钮圆点图片效果
                    // activeThumbImage: ,
                    value: _switchItemA,
                    onChanged: (value) {
                      setState(() {
                        _switchItemA = value;
                      });
                    }),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
