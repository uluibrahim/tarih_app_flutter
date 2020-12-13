import 'package:flutter/material.dart';
import 'package:tarih_app/app_pages/fatih.dart';

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Tarih",
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("Osmanlı Padişahları"),
        ),
        body: Islemler(),
      ),
    );
  }
}

class Islemler extends StatelessWidget {
  var basliklar = List();
  var onBilgi = List();
  @override
  Widget build(BuildContext context) {
    onBilgiGetir();
    baslikGetir();

    return ListView.separated(
      separatorBuilder: (context, index) {
        return Divider(
          color: Colors.red,
          indent: 45,
          endIndent: 45,
          thickness: 1,
        );
      },
      itemCount: basliklar.length,
      itemBuilder: (context, index) {
        return Card(
          child: ListTile(
            leading: Image(image: AssetImage("assets/images/murat.jpg")),
            subtitle: Text("${onBilgi[index]}"),
            title: Text("${basliklar[index]}"),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Fatih()),
              );
            },
          ),
        );
      },
    );
  }

  void baslikGetir() {
    basliklar.add("Dördüncü Murat");
    basliklar.add("Fatih Sultan Mehmet");
    basliklar.add("Yavuz Sultan Selim");
    basliklar.add("Genç Osman");
  }

  void onBilgiGetir() {
    onBilgi.add(
        "27 Temmuz 1612, İstanbul - 8 Şubat 1640, İstanbul\n96. İslam Halifesi\nBağdat Fatihi");
    onBilgi.add(
        "27 Temmuz 1612, İstanbul - 8 Şubat 1640, İstanbul\Nİstanbulun fatihi");
    onBilgi.add(
        "10 Ekim 1470 – 22 Eylül 1520\n9. Osmanlı padişahı ve 88. İslam halifesidir. ");
    onBilgi.add(
        "10 Ekim 1470 – 22 Eylül 1520\n9. Osmanlı padişahı ve 88. İslam halifesidir. ");
  }
}
