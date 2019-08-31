import 'package:flutter/material.dart';
///scrollNotification 通知的获取是通过NotficationListener来实现的，
///与scrollController不同的是NotificationListener是一个widget， 为了监听滚动类型的事件
///我们需要将NotificationListener添加为listView的父容器，从而捕获ListView中的通知，
///而这些通知需要通过onNotification回调实现监听逻辑
class ScrollViewNotifcationDemo extends StatefulWidget {
  @override
  _ScrollViewNotifcationDemoState createState() => _ScrollViewNotifcationDemoState();
}

class _ScrollViewNotifcationDemoState extends State<ScrollViewNotifcationDemo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'ScrollViewNotifcationDemo'
        ),

      ),
      body: NotificationListener<ScrollNotification>(//添加NotifcationListener作为父容器
        onNotification: (scrollNotification){//注册通知回调
          print('${scrollNotification.metrics.pixels}');//或去偏移量
          print('${scrollNotification.context.runtimeType}');//或去偏移量
          
          if (scrollNotification is ScrollStartNotification) {//开始滚动
            print('Scroll Start');
          }else if(scrollNotification is ScrollUpdateNotification){//滚动位置更新
            print('Scroll Updata');
          }else if(scrollNotification is ScrollEndNotification){//滚动结束
            print('Scroll end');
          }  
        },
        child: ListView.builder(
          itemCount: 30,
          itemBuilder: (contexr, index){
            return ListTile(
              title: Text('index$index'),
              subtitle: Text('subIndex$index'),
            );
          },
        ),
      ),
    );
  }
}