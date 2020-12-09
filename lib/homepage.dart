import 'package:design_ui/informationpage/explanationpage.dart';
import 'package:design_ui/informationpage/introductionpage.dart';
import 'package:design_ui/informationpage/practicingpage.dart';
import 'package:design_ui/informationpage/uploadpage.dart';
import 'package:design_ui/widget/information.dart';
import 'package:flutter/material.dart';

class Homepage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        //color: Colors.lightBlue,
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
                    Text(
                      "Arif Budiman Arrosyid",
                      style: TextStyle(
                        //backgroundColor: Colors.blue,
                        fontSize: 20,
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      "Selamat datang di pelatihan UI Desain Mobile App",
                      style: TextStyle(fontSize: 12, color: Colors.black),
                    ),
                  ],
                ),
                Container(
                  height: 40,
                  width: 40,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                          image: AssetImage('assets/icon/pp.png'))),
                )
              ],
            ),
            SizedBox(
              height: 30,
            ),
            Text(
              'Mari pelajari tentang Desain UI',
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
                        Information(
                          informationtitle: 'Pengantar',
                          totalcourse: '5 Vidio',
                          description:
                              'Anda akan belajar tentang UI, tujuan Desain UI, cara mendesain',
                          informationpage: IntroductionPage(),
                        ),
                        SizedBox(height: 20),
                        Information(
                          informationtitle: 'Penjelasaan Tools',
                          totalcourse: '5 Vidio',
                          description:
                              'Anda akan mempelajari Adobe XD, Desain, dan tools',
                          informationpage: ExplanationPage(),
                        ),
                        SizedBox(height: 20),
                        Information(
                          informationtitle: 'Praktik',
                          totalcourse: '1 Vidio',
                          description:
                              'Anda akan praktik dan mengikuti langkah-langkah dari vidio',
                          informationpage: PracticingPage(),
                        ),
                        SizedBox(height: 20),
                        Information(
                          informationtitle: 'Unggah',
                          totalcourse: '',
                          description: 'Anda akan mengunggah project di sini',
                          informationpage: UploadPage(),
                        )
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
