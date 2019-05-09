import 'package:flutter/material.dart';
class Kit extends StatefulWidget {
  final _title;
  Kit(this._title);
  @override
  _KitState createState() => _KitState();
}
class _KitState extends State<Kit> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(widget._title)),
    );
  }
}