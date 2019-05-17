import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

void main() {
//  debugPaintSizeEnabled = true;
  runApp(App());
}

class Skeleton extends StatefulWidget {
  final double height;
  final double width;

  Skeleton({Key key, this.height = 20, this.width = 200}) : super(key: key);

  createState() => SkeletonState();
}

class SkeletonState extends State<Skeleton>
    with SingleTickerProviderStateMixin {
  AnimationController _controller;

  Animation gradientPosition;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
        duration: Duration(milliseconds: 1500), vsync: this);

    gradientPosition = Tween<double>(
      begin: -3,
      end: 10,
    ).animate(
      CurvedAnimation(parent: _controller, curve: Curves.linear),
    )..addListener(() {
        setState(() {});
      });

    _controller.repeat();
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: widget.width,
      height: widget.height,
      decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment(gradientPosition.value, 0),
              end: Alignment(-1, 0),
              colors: [Colors.black12, Colors.black26, Colors.black12])),
    );
  }
}

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter layout',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text('Flutter Layout'),
        ),
        body: ListView(
          children: [
            Image.asset(
              'images/lakes.jpeg',
              width: 600,
              height: 240,
              fit: BoxFit.cover,
            ),
            Container(
              padding: EdgeInsets.all(32.0),
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Container(
                          padding: const EdgeInsets.only(bottom: 8),
                          child: Text(
                            'Oeschinen Lake Campground',
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        Text(
                          'Kandersteg, Switzerland',
                          style: TextStyle(
                            fontSize: 14,
                            color: Colors.grey[600],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Row(
                    children: <Widget>[
                      Container(
                        padding: EdgeInsets.all(0),
                        child: IconButton(
                          icon: Icon(Icons.star),
                          iconSize: 32.0,
                          color: Colors.red,
                        ),
                      ),
                      SizedBox(
                        width: 24,
                        child: Container(
                          child: Text(
                            '41',
                            style: TextStyle(
                              fontSize: 20.0,
                              fontWeight: FontWeight.bold,
                              color: Colors.red,
                            ),
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Icon(Icons.call, color: Colors.red),
                      Container(
                        margin: const EdgeInsets.only(top: 8),
                        child: Text(
                          '电话',
                          style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                            color: Colors.red,
                          ),
                        ),
                      ),
                    ],
                  ),
                  Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Icon(Icons.near_me, color: Colors.red),
                      Container(
                        margin: const EdgeInsets.only(top: 8),
                        child: Text(
                          '发送',
                          style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                            color: Colors.red,
                          ),
                        ),
                      ),
                    ],
                  ),
                  Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Icon(Icons.share, color: Colors.red),
                      Container(
                        margin: const EdgeInsets.only(top: 8),
                        child: Text(
                          '分享',
                          style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                            color: Colors.red,
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.all(36.6),
              child: Text(
                'Lake Oeschinen lies at the foot of the Blüemlisalp in the Bernese '
                'Alps. Situated 1,578 meters above sea level, it is one of the '
                'larger Alpine Lakes. A gondola ride from Kandersteg, followed by a '
                'half-hour walk through pastures and pine forest, leads you to the '
                'lake, which warms to 20 degrees Celsius in the summer. Activities '
                'enjoyed here include rowing, and riding the summer toboggan run.',
                softWrap: true,
                style: TextStyle(fontSize: 16.0, color: Colors.grey[600]),
              ),
            ),
            Container(
              padding: EdgeInsets.all(30.0),
              child: Row(
                children: <Widget>[
                  Skeleton(
                    height: 30.0,
                    width: 40.0,
                  ),
                  Skeleton(
                    height: 30.0,
                    width: 40.0,
                  ),
                  Skeleton(
                    height: 30.0,
                    width: 40.0,
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
