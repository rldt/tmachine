import 'package:flutter/material.dart';

// runApp 接受Widget作为根树
void main() => runApp(new App());

class App extends StatefulWidget {
  @override
  createState() => AppState();
}

class AppState extends State<App> {
  int _counter = 0;
  @override
  void initState() {
    super.initState();
  }

  Widget build(BuildContext context) {
    return new MaterialApp(
        title: 'Tmachine',
        theme: new ThemeData(
          primarySwatch: Colors.red,
        ),
        home: Scaffold(
          appBar: AppBar(
            title: Text('脚手架'),
          ),
          body: Center(
            child: Text('你共点击按钮 $_counter 次.'),
          ),
          bottomNavigationBar: BottomNavigationBar(
            items: [
              BottomNavigationBarItem(
                  icon: Icon(Icons.home, color: Colors.red),
                  title: Text(
                    "首页",
                    style: TextStyle(color: Colors.red),
                  )),
              BottomNavigationBarItem(
                  icon: Icon(Icons.people, color: Colors.red),
                  title: Text(
                    "我的",
                    style: TextStyle(color: Colors.red),
                  ))
            ],
          ),
          floatingActionButton: FloatingActionButton(
            onPressed: () {
              setState(() {
                ++_counter;
              });
            },
            tooltip: '累加器',
            child: Icon(Icons.add),
          ),
          floatingActionButtonLocation:
              FloatingActionButtonLocation.centerDocked,
        ));
  }
}
