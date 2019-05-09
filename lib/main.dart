import 'package:flutter/material.dart';
import 'bottom_tab_bar.dart';
void main() => runApp(new App());
class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Tmachine',
      theme: new ThemeData(
        primarySwatch: Colors.red,
      ),
      home: BottomTabBar(),
    );
  }
}