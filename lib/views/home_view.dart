import 'package:flutter/material.dart';
import 'package:test_app/logic_controller/card_repository.dart';
import 'package:test_app/model/card.dart';
import 'package:test_app/widgets/card_widget.dart';

class HomeView extends StatefulWidget {
  final String title;

  HomeView({super.key, required this.title});

  @override
  State<StatefulWidget> createState() {
    return HomeViewState();
  }
}

class HomeViewState extends State<HomeView> {
  final Future<List<CardFile>> mCards = Future.delayed(
      const Duration(seconds: 10),
          () => CardRepository.getInstance()
      .getCardList());

  HomeViewState();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const ListTile(
        leading: Icon(Icons.home),
        title: Text('Home'),
      ), centerTitle: true,),
      body: Center (
        child: FutureBuilder<List<CardFile>>(
        future: mCards,
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return ListView.builder(
              itemCount: snapshot.data!.length,
              prototypeItem: CardWidget(snapshot.data![0].mTitle,snapshot.data![0].mSubTitle),
              itemBuilder: (context, index) {
                return CardWidget(snapshot.data![0].mTitle,snapshot.data![0].mSubTitle);
              },
            );
          }else{
            return const Text('No data');
          }
        },
      ),
    ),
    );
  }
}

