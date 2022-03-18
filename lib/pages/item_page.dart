import 'package:flutter/material.dart';
import 'package:shopping/models/item.dart';

class ItemPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final args = ModalRoute.of(context)!.settings.arguments as Item;
    return Scaffold(
      appBar: AppBar(
        title: Text("2031710168, M. Afada Nur Saiva Syahira"),
      ),
      body: Container(
        child: Column(
          children: [
            Expanded(child: Text(args.name)),
            Expanded(child: Text(args.price.toString())),
          ],
        ),
      ),
    );
  }
}
