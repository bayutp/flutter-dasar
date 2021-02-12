import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int _number = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("My Counter"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                _number.toString(),
                style: TextStyle(fontSize: 30 + _number.toDouble()),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    margin: EdgeInsets.all(8),
                    child: FlatButton(
                      color: Colors.red,
                      textColor: Colors.white,
                      onPressed: () {
                        setState(() {
                          if (_number > 0) _number--;
                        });
                      },
                      child: Text(
                        "-",
                        style: TextStyle(fontSize: 20),
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.all(8),
                    child: FlatButton(
                      color: Colors.blue,
                      textColor: Colors.white,
                      onPressed: () {
                        setState(() {
                          _number++;
                        });
                      },
                      child: Text(
                        "+",
                        style: TextStyle(fontSize: 20),
                      ),
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
