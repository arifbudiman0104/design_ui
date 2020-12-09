import 'package:design_ui/informationpage/introductioncontent/Intro4.dart';
import 'package:design_ui/widget/content.dart';
import 'package:flutter/material.dart';

import 'introductioncontent/Intro1.dart';
import 'introductioncontent/Intro2.dart';
import 'introductioncontent/Intro3.dart';
import 'introductioncontent/Intro5.dart';

class IntroductionPage extends StatelessWidget {
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
                          "Pengantar",
                          style: TextStyle(
                            //backgroundColor: Colors.blue,
                            fontSize: 20,
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      "5 Vidio Materi",
                      style: TextStyle(
                          fontSize: 15,
                          color: Colors.black,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      "Anda akan belajar tentang UI, \ntujuan Desain UI, cara mendesain",
                      style: TextStyle(fontSize: 15, color: Colors.black),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(
              height: 30,
            ),
            Text(
              'Vidio Pelatihan',
              style: TextStyle(
                  fontSize: 15, height: 1.3, fontWeight: FontWeight.w700),
            ),
            SizedBox(
              height: 20,
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Content(
                          number: "01",
                          contenttitle: "Apa itu UI?",
                          time: "02:18",
                          contentpage: Intro1(),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Content(
                          number: "02",
                          contenttitle: "Apakah tujuan UI?",
                          time: "01:16",
                          contentpage: Intro2(),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Content(
                          number: "03",
                          contenttitle: "Aplikasi apa saja yang bisa digunakan untuk mendesain UI?",
                          time: "01:40",
                          contentpage: Intro3(),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Content(
                          number: "04",
                          contenttitle: "Panduan yang bisa dipakai dalam mendesain mobile UI?",
                          time: "01:20",
                          contentpage: Intro4(),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Content(
                          number: "05",
                          contenttitle: "Apa itu prototyping?",
                          time: "01:26",
                          contentpage: Intro5(),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        // Content(
                        //   number: "06",
                        //   contenttitle:
                        //       "What is the app usually use for UI Design?",
                        //   time: "05:00",
                        //   contentpage: Intro6(),
                        // ),
                      ],
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
