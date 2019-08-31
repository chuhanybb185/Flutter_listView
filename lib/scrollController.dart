import 'package:flutter/material.dart';
//滚动监听
class ScrollControllerDemo extends StatefulWidget {
  @override
  _ScrollControllerDemoState createState() => _ScrollControllerDemoState();
}

class _ScrollControllerDemoState extends State<ScrollControllerDemo> {
  ScrollController _controller;
  bool isToTop = false;

  @override
  void initState() {
    _controller = ScrollController();
    _controller.addListener(() {
      if (_controller.offset > 1000) {//向下滚动超过1000 激活点击按钮
        setState(() {
          isToTop = true;
        });
      } else if (_controller.offset < 300) {//向下滚动低于300 设置未激活按钮
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
        title: Text('scrollController'),
      ),
      body: Column(
        children: <Widget>[
          Container(
            width: double.infinity,
            height: 50,
            color: Colors.yellow,
            child: Center(
              child: RaisedButton(
                onPressed: (isToTop
                    ? () {
                      //回到列表顶部  带动画效果
                        _controller.animateTo(.0,
                            duration: Duration(milliseconds: 200),
                            curve: Curves.ease);
                      }
                    : null),
                child: Text('Top'),
              ),
            ),
          ),
          Expanded(
            child: ListView.builder(
              controller: _controller,
              itemBuilder: (BuildContext context, int index) {
                return ListTile(
                  title: Text('index$index'),
                  subtitle: Text('suIndex$index'),
                );
              },
              itemCount: 100,
              itemExtent: 50,
              
            ),
          )
        ],
      ),
    );
  }
}
