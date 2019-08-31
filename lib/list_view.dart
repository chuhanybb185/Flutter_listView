import 'package:flutter/material.dart';

//特点一次性创建好全部子widget    适用于展示少量连续子widget的场景  
class ListViewDemo extends StatefulWidget {
  @override
  _ListViewDemoState createState() => _ListViewDemoState();
}

class _ListViewDemoState extends State<ListViewDemo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'ListViewDemo',
        ),
      ),
      body: ListView(//适合widget较少的场景
        children: <Widget>[
          ListTile( //折叠列表
            leading: Icon(Icons.map),
            title: Text('水平方向布局'),
            onTap: (){
              Navigator.pushNamed(context, 'listScrollDirection');
            },
          ),
          ListTile( //折叠列表
            leading: Icon(Icons.mail),
            title: Text('ListViewBuiler'),//适合widget较多的列表
            onTap: (){
              Navigator.pushNamed(context, 'listViewBuilder');
            },
          ),
          ListTile( //折叠列表
            leading: Icon(Icons.message),
            title: Text('listViewSeparated'),
            onTap: (){
              Navigator.pushNamed(context,'listViewSwparated');
            },
          ),
          ListTile( //折叠列表
            leading: Icon(Icons.message),
            title: Text('customScrollViewDemo'),
            onTap: (){
              Navigator.pushNamed(context,'customScrollViewDemo');
            },
          ),
          ListTile( //滚动监听
            leading: Icon(Icons.message),
            title: Text('scrollControllerDemo'),
            onTap: (){
              Navigator.pushNamed(context,'scrollControllerDemo');
            },
          ),
          ListTile( //通知监听
            leading: Icon(Icons.message),
            title: Text('ScrollViewNotifcationDemo'),
            onTap: (){
              Navigator.pushNamed(context,'scrollViewNotifcationDemo');
            },
          ),
        ],
      ),
    );
  }
}