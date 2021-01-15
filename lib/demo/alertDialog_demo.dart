import 'package:flutter/material.dart';
import 'dart:async';

enum Action { OK, Cancel }

class AlertDialogDemo extends StatefulWidget {
  @override
  _AlertDialogDemoState createState() => _AlertDialogDemoState();
}

class _AlertDialogDemoState extends State<AlertDialogDemo> {
  String _chioice = 'Nothing';
  Future _openAlertDialog() async {
    final action = await showDialog(
      context: context,
      // 强制只能选择一个动作
      barrierDismissible: false,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('AlertDialog'),
          content: Text('Are you sure about this?'),
          actions: [
            FlatButton(
                child: Text('Cancel'),
                onPressed: () {
                  Navigator.pop(context, Action.Cancel);
                }),
            FlatButton(
                child: Text('OK'),
                onPressed: () {
                  Navigator.pop(context, Action.OK);
                }),
          ],
        );
      },
    );
    switch (action) {
      case Action.OK:
        setState(() {
          _chioice = 'OK';
        });
        break;
      case Action.Cancel:
        setState(() {
          _chioice = 'Cancel';
        });
        break;
      default:
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('AlertDialogDemo'),
        elevation: 0.0,
      ),
      body: Container(
        padding: EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('You choice is: $_chioice'),
            SizedBox(
              height: 16.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                RaisedButton(
                  child: Text('Open AlertDialogDemo'),
                  onPressed: _openAlertDialog,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
