import 'package:flutter/material.dart';

void main() => runApp(App());

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
                        color:Colors.red,
                      ),
                    ),
                    SizedBox(
                      width: 24,
                      child: Container(
                        child: Text('41',style: TextStyle(
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.red,
                        ),),
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
                style: TextStyle(
                  fontSize: 16.0,
                  color: Colors.grey[600]
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
