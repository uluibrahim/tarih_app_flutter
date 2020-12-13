import 'package:flutter/material.dart';

class Fatih extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Tarih",
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
            title: Text("FATİH SULTAN MEHMET"),
            leading: RaisedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Icon(
                Icons.arrow_back,
                color: Colors.white,
              ),
              color: Colors.blue,
            )),
        body: Container(
          child: Text("Fatih Sultan Mehmet"),
        ),
      ),
    );
  }
}
