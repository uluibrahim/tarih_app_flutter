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
  var basliklar = [
    "Beyazıd",
    "Dördüncü Murat",
    "Fatih Sultan",
    "Yavuz Sultan",
    "Genç Osman",
    "Kanuni sultan",
    "2.murat",
    "Abdülhamit",
    "Yıldırım"
  ];

  @override
  Widget build(BuildContext context) {
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
            subtitle: Text("${basliklar[index]}"),
            title: Text("${basliklar[index]}"),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => Fatih(basliklar[index])),
              );
            },
          ),
        );
      },
    );
  }
}
