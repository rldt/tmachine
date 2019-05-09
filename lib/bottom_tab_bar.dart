import 'package:flutter/material.dart';
import 'add_task.dart';
import 'statistics_list.dart';
import 'kit.dart';

class BottomTabBar extends StatefulWidget {
  @override
  _BottomTabBarState createState() => _BottomTabBarState();
}
class _BottomTabBarState extends State<BottomTabBar> {
  int _index = 0;
  @override
  void initState() {
    super.initState();
  }
  showView(){
    if(_index == 0){
      return StatisticsList('清单');
    }else{
      return Kit('运动');
    }
  }
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: showView(),
      floatingActionButton: new FloatingActionButton(
        onPressed: () {
          Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context){
            return AddTask('添加任务');
          }));
        },
        tooltip: 'Increment',
        child: new Icon(Icons.add),
      ), 
      floatingActionButtonLocation:FloatingActionButtonLocation.centerDocked, 
      bottomNavigationBar: BottomAppBar(
        color: Colors.red,
        shape: CircularNotchedRectangle(),
        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            IconButton(
              icon: Icon(Icons.pie_chart),
              color: Colors.white,
              onPressed: () {
                setState(() {
                  _index = 0;
                });
              },
            ),
            IconButton(
              icon: Icon(Icons.directions_run),
              color: Colors.white,
              onPressed: () {
                setState(() {
                  _index = 1;
                });
              },
            ),
          ],
        ),
      ),
    );
  }
}
