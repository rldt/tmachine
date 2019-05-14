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
      home: new Scaffold(
        body: Center(
          child: Container(
            constraints: BoxConstraints.expand(
              height:Theme.of(context).textTheme.display1.fontSize * 1.0 + 100.0,
            ),
            margin: const EdgeInsets.all(10.0),
            padding: const EdgeInsets.all(8.0),
            alignment: Alignment.center,
            color: Colors.pink[400],
            // width: 96.0,
            // height: 96.0,
            child: Text('RunningLee.Top',
                style: Theme.of(context).textTheme.display1.copyWith(color: Colors.white)),
                transform: Matrix4.rotationZ(0.2),
          ),
        ),
      ),
    );
  }
}
