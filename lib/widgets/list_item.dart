import 'package:flutter/material.dart';
import 'package:shopping/models/item.dart';

class ListItem extends StatelessWidget {
  const ListItem({
    Key? key,
    required this.item,
  }) : super(key: key);

  final Item item;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.pushNamed(context, '/item', arguments: item);
      },
      child: Card(
        child: Container(
          margin: EdgeInsets.all(8),
          child: Row(
            children: [
              Expanded(child: Text(item.name)),
              Expanded(
                  child: Text(
                item.price.toString(),
                textAlign: TextAlign.end,
              )),
            ],
          ),
        ),
      ),
    );
  }
}
