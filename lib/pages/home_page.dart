import 'package:flutter/material.dart';
import 'package:shopping/models/item.dart';
import 'package:shopping/widgets/list_item.dart';

class HomePage extends StatelessWidget {
  final List<Item> items = [
    Item(name: 'Sugar', price: 5000),
    Item(name: 'Salt', price: 2000),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("2031710168, M. Afada Nur Saiva Syahira"),
      ),
      body: Container(
        margin: EdgeInsets.all(8),
        child: ListView.builder(
            padding: EdgeInsets.all(8),
            itemCount: items.length,
            itemBuilder: (context, index) {
              final item = items[index];
              return ListItem(item: item);
            }),
      ),
    );
  }
}
