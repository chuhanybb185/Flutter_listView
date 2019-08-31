import 'package:flutter/material.dart';
//与listView.Builder类似并提供了自定义分割线的功能,  与listView.builder场景类似
class ListViewSeparatedDemo extends StatefulWidget {
  @override
  _ListViewSeparatedDemoState createState() => _ListViewSeparatedDemoState();
}

class _ListViewSeparatedDemoState extends State<ListViewSeparatedDemo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'listViewSeparates'
        ),
      ),
      body: ListView.separated(//抽离出了分割线的创建方separatoredBuilder 以便设置不同样式的分割线
        itemCount: 100,
        separatorBuilder: (BuildContext context, int index)=>index %2 == 0? Divider(color: Colors.green,):Divider(color: Colors.red,),
        itemBuilder: (BuildContext context, int index)=>ListTile(title: Text('itile $index'), subtitle: Text('title $index'),),

      ),
    );
  }
}