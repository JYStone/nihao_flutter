import 'package:flutter/material.dart';
import 'package:scoped_model/scoped_model.dart';

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
    return CounterProvider(
      count: _count,
      increaseCount: _increaseCount,
      child: Scaffold(
        appBar: AppBar(
          title: Text('StateManagmentDemo'),
          // elevation: 0.0,
        ),
        body: CounterWrapper(), //Counter
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.add),
          onPressed: _increaseCountPlus,
        ),
      ),
    );
  }
}

class ScopedModelDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ScopedModel(
      model: CounterModel(),
      child: Scaffold(
        appBar: AppBar(
          title: Text('StateManagmentDemo'),
          elevation: 0.0,
        ),
        body: CounterWrapper(), //Counter
        floatingActionButton: ScopedModelDescendant(
          rebuildOnChange: false,
          builder: (context, child, model) => FloatingActionButton(
            child: Icon(Icons.add),
            onPressed: model.increaseCount,
          ),
        ),
      ),
    );
  }
}

class CounterWrapper extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Counter(),
    );
  }
}

class Counter extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ScopedModelDescendant<CounterModel>(
      builder: (context, _, model) => ActionChip(
          label: Text('$model.count'), onPressed: model.increaseCount),
    );
  }
}

class CounterProvider extends InheritedWidget {
  final int count;
  final VoidCallback increaseCount;
  final Widget child;

  CounterProvider({
    this.count,
    this.increaseCount,
    this.child,
  }) : super(child: child);
  static CounterProvider of(BuildContext context) =>
      context.inheritFromWidgetOfExactType(CounterProvider);

  @override
  bool updateShouldNotify(InheritedWidget oldWidget) {
    return true;
  }
}

class CounterModel extends Model {
  int _count = 0;
  int get count => _count;

  void increaseCount() {
    _count += 1;
    notifyListeners();
  }
}
