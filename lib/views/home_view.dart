import 'package:flutter/material.dart';
import 'package:test_app/logic_controller/card_repository.dart';
import 'package:test_app/model/card.dart';
import 'package:test_app/widgets/card_widget.dart';

class HomeView extends StatefulWidget {
  final String title;
  final List<CardFile> mCards = CardRepository.getInstance().mCardList;

  HomeView({super.key, required this.title});

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
      body: ListView.builder(
          padding: const EdgeInsets.all(8),
          itemCount: widget.mCards.length,
          itemBuilder: (BuildContext context, int index) {
            return CardWidget(
                widget.mCards[index].mTitle, widget.mCards[index].mSubTitle);
          }),
    );
  }
}
