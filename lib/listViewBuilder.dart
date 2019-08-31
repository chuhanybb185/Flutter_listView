import 'package:flutter/material.dart';

//提供了子widget创建方法仅在需要展现时才创建，  适用于子widget较多切视觉效果呈现某种规律性的场景
class ListViewBuilder extends StatefulWidget {
  @override
  _ListViewBuilderState createState() => _ListViewBuilderState();
}

class _ListViewBuilderState extends State<ListViewBuilder> {
  ScrollController _controller; //控制器
  bool isToTop = false; //目标是否要启动‘Top按钮’

  @override
  void initState() {
    _controller = ScrollController();
    //添加对滚动视图的滚动监听
    _controller.addListener(() {
      if (_controller.offset > 1000) {
        //表示向下滚动了 1000 则启动 Top按钮
        print('${_controller.offset}');
        setState(() {
          isToTop = true;
        });
      } else if (_controller.offset < 300) {
        //如果向下滚动距离不足300 则禁用Top按钮
        setState(() {
          isToTop = false;
        });
      }
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('listViewBuilder'),
        ),
        body: Column(
          children: <Widget>[
            Container(
              height: 100,
              width: double.infinity,
              child: Center(
                  child: RaisedButton(
                onPressed: (isToTop
                    ? () {
                        if (isToTop) {
                          //做一个滚动到顶部的动画
                          _controller.animateTo(.0,
                              duration: Duration(milliseconds: 200),
                              curve: Curves.ease);
                        }
                      }
                    : null),
                child: Text('Top'),
              )),
            ),
           Expanded(             
             child:  ListView.builder(
              //适合widget较多的场景
              itemCount: 100,
              itemExtent: 50, //列表高度
              itemBuilder: (BuildContext context, index) => ListTile(
                    title: Text('title $index'),
                    subtitle: Text('title $index'),
                  ),
              controller: _controller,
            ),
           )
          ],
        ));
  }
}
