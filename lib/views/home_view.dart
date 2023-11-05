import 'package:flutter/material.dart';
import 'package:test_app/widgets/card_widget.dart';

class HomeView extends StatefulWidget {
  final String title;

  const HomeView({super.key, required this.title});

  @override
  State<StatefulWidget> createState() {
    return HomeViewState();
  }
}

class HomeViewState extends State<HomeView> {
  HomeViewState();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: Center(
          // Center is a layout widget. It takes a single child and positions it
          // in the middle of the parent.
          child: Container(
            color: Colors.red,
            alignment: Alignment.center,
            child: const Column(
              children: <Widget>[ CardWidget('title1','subTitle1'),CardWidget('title2','subTitle2'), CardWidget('title3','subTitle3')],
            ),
          ),
        ),
    );
  }
}
