import 'package:flutter/material.dart';

class CustomScrollViewDemo extends StatefulWidget {
  @override
  _CustomScrollViewDemoState createState() => _CustomScrollViewDemoState();
}

class _CustomScrollViewDemoState extends State<CustomScrollViewDemo> {

 

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'customScrollViewDemo',
        ),
      ),
      body: CustomScrollView(//CustomScrollView用来处理多个需要自定义的滚动效果的widget在CustomScrollView中这些彼此独立可滚动的widget被称为silver
        slivers: <Widget>[
          SliverAppBar(//作为头控件
            title: Text(
              'CustomScrollView Demo',
            ),
            floating: true, //设置悬浮样式
            //设置悬浮头图背景
            flexibleSpace: Image.network('https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1567018289710&di=8172a76fa6877c0c3a99709e758b7b03&imgtype=0&src=http%3A%2F%2Fb-ssl.duitang.com%2Fuploads%2Fitem%2F201610%2F13%2F20161013202553_tuA45.jpeg', fit: BoxFit.cover,),
            expandedHeight: 180,//头图高度
            
          ),
          SliverList(//作为列表控件
            delegate: SliverChildBuilderDelegate(
              (context,index) => ListTile(
                title: Text(
                  'tilte $index',

                ),
              ),
              childCount: 100, //列表元素100个
            ),
          )
        ],
      ),
    );
  }
}