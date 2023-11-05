import 'package:flutter/material.dart';

class CardWidget extends StatelessWidget{
  final String titleText;
  final String subTitle;
  const CardWidget(this.titleText,this.subTitle, {super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        ListTile(
          leading: Icon(Icons.alarm),
          title: Text(titleText),
          subtitle: Text(subTitle),
        ),
        const Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: <Widget>[
            TextButton(
              onPressed: null,
              child: Text('BUY TICKETS'),
            ),
            SizedBox(width: 8),
            TextButton(
              onPressed: null,
              child: Text('LISTEN'),
            ),
            SizedBox(width: 8),
          ],
        ),
      ],
    ),
    );
  }
}