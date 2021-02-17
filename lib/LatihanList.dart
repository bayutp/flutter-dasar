import 'package:flutter/material.dart';

class LatihanList extends StatefulWidget {
  @override
  _LatihanListState createState() => _LatihanListState();
}

class _LatihanListState extends State<LatihanList> {
  List<Widget> widgets = [];
  int count = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text("Latihan List"),
          ),
          body: ListView(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      margin: EdgeInsets.only(left: 16),
                      child: FlatButton(
                        onPressed: () {
                          setState(() {
                            widgets.add(Container(
                              margin: EdgeInsets.fromLTRB(16,16,16,0),
                              child: Text(
                                "Data ke " + count.toString(),
                                style:
                                    TextStyle(fontFamily: "Montserrat", fontSize: 20),
                              ),
                            ));
                            count++;
                          });
                        },
                        child: Text("Tambah Data"),
                        color: Colors.lightBlue,
                        textColor: Colors.white,
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(right: 16),
                      child: FlatButton(
                        onPressed: () {
                          setState(() {
                            widgets.removeLast();
                            count--;
                          });
                        },
                        child: Text("Hapus Data"),
                        color: Colors.red,
                        textColor: Colors.white,
                      ),
                    ),
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: widgets,
                )
              ],
            ),
          ),
    );
  }
}
