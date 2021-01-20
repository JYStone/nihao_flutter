import 'dart:developer';

import 'package:flutter/material.dart';

class StateManagmentDemo extends StatefulWidget {
  @override
  _StateManagmentDemoState createState() => _StateManagmentDemoState();
}

class _StateManagmentDemoState extends State<StateManagmentDemo> {
  int _count = 0;
  void _increaseCount() {
    setState(() {
      _count -= 1;
    });
  }

  void _increaseCountPlus() {
    setState(() {
      _count += 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('StateManagmentDemo'),
        // elevation: 0.0,
      ),
      body: CounterWrapper(_count, _increaseCount), //Counter
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: _increaseCountPlus,
      ),
    );
  }
}

class CounterWrapper extends StatelessWidget {
  final int count;
  final VoidCallback increaseCount;

  CounterWrapper(this.count, this.increaseCount);
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Counter(count, increaseCount),
    );
  }
}

class Counter extends StatelessWidget {
  final int count;
  final VoidCallback increaseCount;

  Counter(this.count, this.increaseCount);
  @override
  Widget build(BuildContext context) {
    return Center(
      child: ActionChip(label: Text('$count'), onPressed: increaseCount),
    );
  }
}
