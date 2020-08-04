import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

myapp1() {
  var search = Icon(Icons.search);
  var setting = Icon(Icons.settings);
  var play = Icon(Icons.play_arrow);
  var mybody = Container(
    width: double.infinity,
    height: double.infinity,
    color: Colors.lightBlue.shade50,
    child: Column(
      children: <Widget>[
        //welcome message
        Row(
          children: <Widget>[
            Container(
                child: Text(
                  "Good Morning",
                  style: TextStyle(fontSize: 24),
                ),
                margin: EdgeInsets.all(10)),
          ],
        ),
        //Top 4 short cut
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Container(
                height: 40,
                width: 50,
                color: Colors.black12,
                margin: EdgeInsets.only(left: 10),
                child: Image.network(
                    "https://github.com/akshit0704/flutter_personel/raw/master/love2.jpg")),
            Container(
              height: 40,
              width: 140,
              color: Colors.black12,
              margin: EdgeInsets.only(right: 10),
              child: Center(
                child: Text(
                  "Liked songs",
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    fontSize: 16,
                  ),
                ),
              ),
            ),
            Container(
              height: 40,
              width: 50,
              color: Colors.black12,
              child: Image.network(
                  "https://github.com/akshit0704/flutter_personel/raw/master/recently%20played.jpg"),
            ),
            Container(
              height: 40,
              width: 140,
              color: Colors.black12,
              child: Center(child: Text("Recently played")),
            ),
          ],
        ),

        //first two complete here

        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Container(
                height: 40,
                width: 50,
                color: Colors.black12,
                margin: EdgeInsets.only(left: 10, top: 10),
                child: Image.network(
                    "https://github.com/akshit0704/flutter_personel/raw/master/india%20top%2030.jpg")),
            Container(
              height: 40,
              width: 140,
              color: Colors.black12,
              margin: EdgeInsets.only(top: 10),
              child: Center(
                child: Text(
                  "India top 30",
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    fontSize: 16,
                  ),
                ),
              ),
            ),
            Container(
                height: 40,
                width: 50,
                color: Colors.black12,
                margin: EdgeInsets.only(left: 10, top: 10),
                child: Image.network(
                    "https://github.com/akshit0704/flutter_personel/raw/master/world%20top%2030.jpg")),
            Container(
              height: 40,
              width: 140,
              color: Colors.black12,
              margin: EdgeInsets.only(top: 10),
              child: Center(child: Text("   World top 30      ")),
            ),
          ],
        ),
        //Currently trending songs
        Row(
          children: <Widget>[
            Container(
                child: Text(
                  "Currently trending",
                  style: TextStyle(fontSize: 24),
                ),
                margin: EdgeInsets.all(10))
          ],
        ),
        Row(
          children: <Widget>[
            Container(
              height: 130,
              width: 130,
              margin: EdgeInsets.only(right: 10),
              child: Card(
                child: Image.network(
                  "https://github.com/akshit0704/flutter_personel/raw/master/first_trending.jpg",
                  fit: BoxFit.cover,
                ),
                elevation: 10,
              ),
            ),
            Container(
              height: 130,
              width: 130,
              margin: EdgeInsets.only(right: 10),
              child: Card(
                child: Image.network(
                  "https://github.com/akshit0704/flutter_personel/raw/master/second_trending.jpg",
                  fit: BoxFit.cover,
                ),
                elevation: 10,
              ),
            ),
            Container(
              height: 130,
              width: 130,
              child: Card(
                child: Image.network(
                  "https://github.com/akshit0704/flutter_personel/raw/master/third_trending.jpg",
                  fit: BoxFit.cover,
                ),
                elevation: 10,
              ),
            )
          ],
        ),
        //trending songs in india
        Row(
          children: <Widget>[
            Container(
                child: Text(
                  "Trending in India",
                  style: TextStyle(fontSize: 24),
                ),
                margin: EdgeInsets.all(10))
          ],
        ),
        Row(
          children: <Widget>[
            Container(
              height: 130,
              width: 130,
              margin: EdgeInsets.only(right: 10),
              child: Card(
                child: Image.network(
                  "https://github.com/akshit0704/flutter_personel/raw/master/first_india.jpg",
                  fit: BoxFit.cover,
                ),
                elevation: 10,
              ),
            ),
            Container(
              height: 130,
              width: 130,
              margin: EdgeInsets.only(right: 10),
              child: Card(
                child: Image.network(
                  "https://github.com/akshit0704/flutter_personel/raw/master/second_india.jpg",
                  fit: BoxFit.cover,
                ),
                elevation: 10,
              ),
            ),
            Container(
              height: 130,
              width: 130,
              child: Card(
                child: Image.network(
                  "https://github.com/akshit0704/flutter_personel/raw/master/third_india.jpg",
                  fit: BoxFit.cover,
                ),
                elevation: 10,
              ),
            )
          ],
        ),
        Row(
          children: <Widget>[
            Container(
                child: Text(
                  "More latest hits",
                  style: TextStyle(fontSize: 24),
                ),
                margin: EdgeInsets.all(10))
          ],
        ),
        Row(
          children: <Widget>[
            Container(
              width: 340,
              height: 61,
              color: Colors.purple.shade900,
              child: Card(
                child: Center(
                  child: Text(
                    "Pachtaoge                                            ",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                    ),
                  ),
                ),
                color: Colors.purple.shade900,
              ),
            ),
            Container(
              width: 50,
              height: 61,
              color: Colors.purple.shade900,
              child: IconButton(
                icon: play,
                onPressed: () {
                  var a = AudioCache();
                  a.play("demo.mp3");
                },
              ),
            )
          ],
        ),
      ],
    ),
  );
  return MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Scaffold(
      appBar: AppBar(
        title: Text("MusicMix"),
        actions: <Widget>[
          IconButton(
              icon: search, onPressed: () => print("Search button pressed")),
          IconButton(
              icon: setting, onPressed: () => print("Setting button pressed"))
        ],
        backgroundColor: Colors.purple.shade900,
      ),
      body: mybody,
    ),
  );
}
