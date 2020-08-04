import 'package:audioplayers/audio_cache.dart';
import 'package:flutter/material.dart';

myapp1() {
  var mybody = Container(
    width: double.infinity,
    height: double.infinity,
    color: Colors.grey.shade200,
    child: Column(
      children: <Widget>[
        Row(
          children: <Widget>[
            Container(
              height: 50,
              width: 50,
              child: Text("This Image and Audio comes from assets"),
            ),
            Container(
              child: RaisedButton(
                onPressed: () {
                  var a = AudioCache();
                  a.play("demo.mp3");
                },
                child: Card(
                  color: Colors.blueAccent.shade200,
                  child: Image.asset(
                    "images/demo.jpg",
                    height: 50,
                    width: 50,
                  ),
                ),
              ),
            )
          ],
        ),
        Row(
          children: <Widget>[
            Container(
              child: Text("Work successfully"),
            )
          ],
        )
      ],
    ),
  );
  return MaterialApp(
    home: Scaffold(
      appBar: AppBar(
        title: Text("Demo titile"),
        backgroundColor: Colors.amber,
      ),
      body: mybody,
    ),
  );
}
