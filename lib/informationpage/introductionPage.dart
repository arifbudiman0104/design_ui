import 'package:flutter/material.dart';

class IntroductionPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Introduction"),
      ),
      body: Container(
          child: Column(
        children: [
          Container(
            color: Colors.blue,
            height: 50,
            child: Column(
              children: [
                Text("masuk"),
              ],
            ),
          )
        ],
      )),
    );
  }
}
