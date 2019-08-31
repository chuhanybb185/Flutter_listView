import 'package:flutter/material.dart';


class ListScrillDirectionDemo extends StatefulWidget {
  @override
  _ListScrillDirectionDemoState createState() => _ListScrillDirectionDemoState();
}

class _ListScrillDirectionDemoState extends State<ListScrillDirectionDemo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'listScrillDirectionDemo',
        ),
      ),
      body: ListView(//适合widget较少的场景
        scrollDirection: Axis.vertical,
        itemExtent: 140,//item延展尺寸可以提高性能
        children: <Widget>[
          Container(color: Colors.black,),
          Container(color: Colors.red,),
          Container(color: Colors.blue,),
          Container(color: Colors.green,),
          Container(color: Colors.yellow,),
          Container(color: Colors.orange,),

        ],
      ),
    );
  }
}