import 'package:flutter/material.dart';
import 'package:list_view/customScrillView.dart';
import 'package:list_view/listViewBuilder.dart';
import 'package:list_view/listViewSeparated.dart';
import 'package:list_view/list_scrollDirection.dart';
import 'package:list_view/list_view.dart';
import 'package:list_view/scrollController.dart';
import 'package:list_view/scrollNotification.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      routes: {
         'listScrollDirection': (ctx) => ListScrillDirectionDemo(),
         'listViewBuilder': (ctx) => ListViewBuilder(),
         'listViewSwparated': (ctx) => ListViewSeparatedDemo(),
         'customScrollViewDemo': (ctx) => CustomScrollViewDemo(),
         'scrollControllerDemo': (ctx) => ScrollControllerDemo(),
         'scrollViewNotifcationDemo': (ctx) => ScrollViewNotifcationDemo(),
      },
      home: ListViewDemo( ), 
    );
  }
}

