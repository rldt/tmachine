import 'package:flutter/material.dart';
class StatisticsList extends StatefulWidget {
  final _title;
  StatisticsList(this._title);
  @override
  _StatisticsListState createState() => _StatisticsListState();
}
class _StatisticsListState extends State<StatisticsList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(widget._title),),
    );
  }
}