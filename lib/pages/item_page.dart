import 'package:flutter/material.dart';
import 'package:shopping/models/item.dart';

class ItemPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final args = ModalRoute.of(context)!.settings.arguments as Item;
    return Scaffold(
      appBar: AppBar(
        title: Text("2031710168, M. Afada Nur Saiva Syahira"),
        backgroundColor: Colors.deepPurpleAccent,
      ),
      body: Container(
        margin: EdgeInsets.only(bottom: 20),
        alignment: Alignment.center,
        child: Column(
          children: [
            Expanded(
              child: Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.deepPurpleAccent,
                  image: DecorationImage(
                    image: AssetImage(args.pics),
                  ),
                ),
              ),
            ),
            Expanded(
                child: Container(
              child: Text(
                args.name +
                    '\n \n Downloaded' +
                    '\n' +
                    args.downloaded.toString() +
                    ' M+\n\n' +
                    args.descript,
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
              ),
            )),
          ],
        ),
      ),
    );
  }
}
