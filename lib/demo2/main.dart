import 'package:flutter/material.dart';

// runApp 接受Widget作为根树
void main() => runApp(new App());

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Tmachine',
      theme: new ThemeData(
        primarySwatch: Colors.red,
      ),
      home: Counter(),
    );
  }
}

class CounterDisplay extends StatelessWidget {
  ///回调
  CounterDisplay({this.count});

  final int count;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('Count: $count')
    );
  }
}

class CounterIncrementor extends StatelessWidget {
  CounterIncrementor({this.onPressed});
  ///回调
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return Container(
        // padding: const EdgeInsets.all(50.0),
        child: RaisedButton(
              onPressed: onPressed,
              child: new Text('+'),
        )
    );
  }
}

class Counter extends StatefulWidget {
  @override
  createState() => new _CounterState();
}

class _CounterState extends State<Counter> {
  int _counter = 0;

  void _increment() {
    setState(() {
      ++_counter;
    });
  }

  @override
  Widget build(BuildContext context) {
    return new Column(
      children: <Widget>[
      new CounterIncrementor(onPressed: _increment),
      new CounterDisplay(count: _counter),
    ]);
  }
}
