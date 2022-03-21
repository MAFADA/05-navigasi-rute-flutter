import 'package:flutter/material.dart';
import 'package:shopping/models/item.dart';
import 'package:shopping/widgets/list_item.dart';

class HomePage extends StatelessWidget {
  final List<Item> items = [
    Item(
        name: 'Apex Legends Mobile',
        downloaded: 1,
        pics: 'assets/images/apex.jpg',
        descript:
            'Skuad multipemain, gameplay penembak orang pertama (fps), dan pertempuran inovatif menunggumu di medan tempur! Ikuti pertarungan menegangkan yang menuntut satu hal saja dari semua yang ikut: bertahan hidup. Buktikan kamu mampu keluar dari sana hidup-hidup.'),
    Item(
        name: 'Call of Duty Mobile',
        downloaded: 10,
        pics: 'assets/images/codm.jpg',
        descript:
            'Mainkan game FPS legendaris seri Call of Duty® kapanpun dan dimanapun bersama teman-temanmu. Nikmati pengalaman terbaru bermain game legendaris melalui ponselmu sekarang!'),
    Item(
        name: 'Blue Archive',
        downloaded: 1,
        pics: 'assets/images/barch.png',
        descript:
            "You have been appointed as an advisor to the Federal Investigation Club, Schale, located in Kivotos. It's a huge academy city where numerous academies are clustered together.Resolve the endless incidents that occur in Kivotos with charming allies full of personality, and build special memories with them!"),
    Item(
        name: 'Genshin Impact',
        downloaded: 50,
        pics: 'assets/images/genshin.jpeg',
        descript:
            'Genshin Impact adalah game RPG Open World terbaru. Kamu adalah seorang pengembara yang menjelajah sebuah dunia fantasi yang teramat luas, kamu dapat menjelajahi tujuh bangsa, bertemu berbagai karakter berkemampuan dan berkepribadian unik, melawan musuh-musuh kuat, dan berkelana mencari saudaramu yang hilang. Di dunia yang luas ini, biarkan rasa keingintahuan membawamu menguak misteri-misteri yang tersembunyi, sampai akhirnya kamu dapat bertemu kembali dengan saudaramu, dan menyaksikan akhir dari kisah perjalananmu.'),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("2031710168, M. Afada Nur Saiva Syahira"),
        backgroundColor: Colors.deepPurpleAccent,
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
