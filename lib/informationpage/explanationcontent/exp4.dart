import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class Exp4 extends StatefulWidget {
  @override
  _Exp4State createState() => _Exp4State();
}

class _Exp4State extends State<Exp4> {
  String videoURL = "https://youtu.be/84C78EfYlxQ";
  YoutubePlayerController _controller;
  @override
  void initState() {
    _controller = YoutubePlayerController(
        initialVideoId: YoutubePlayer.convertUrlToId(videoURL));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.only(top: 40, left: 15, right: 15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        IconButton(
                          icon: Icon(Icons.arrow_back),
                          onPressed: () {
                            Navigator.pop(context);
                          },
                        ),
                        SizedBox(
                          width: 25,
                        ),
                        Text(
                          "Tips Desain",
                          style: TextStyle(
                            //backgroundColor: Colors.blue,
                            fontSize: 16,
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    YoutubePlayerBuilder(
                      player: YoutubePlayer(
                        controller: _controller,
                      ),
                      builder: (context, player) {
                        return Column(
                          children: [player],
                        );
                      },
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "Berikut ini Shortcut yang sering digunakan :\n1.	V = Select\n2.	R = Rectangle\n3.	E = Ellipse\n4.	L = Line\n5.	P = Pen\n6.	T = Text\n7.	A = Artboard\n8.	Z = Zoom Mode",
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        fontSize: 16,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
