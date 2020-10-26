import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class Upload extends StatefulWidget {
  @override
  _UploadState createState() => _UploadState();
}

class _UploadState extends State<Upload> {
  String videoURL =
      "https://www.youtube.com/watch?v=PSoPr9ccogI&t=1302s&ab_channel=ArifBudiman";
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
                          "Follow the step carefully",
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
                    Text("Follow the step carefully"),
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

