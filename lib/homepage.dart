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
              'Lets learn about UI Design',
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
                          informationtitle: 'Introduction',
                          totalcourse: '7 course',
                          description:
                              'You will learn about UI, the purpose of UI Design, how to design',
                          informationpage: IntroductionPage(),
                        ),
                        SizedBox(height: 20),
                        Information(
                          informationtitle: 'Explanation Tools',
                          totalcourse: '4 course',
                          description:
                              'You will learn Adobe XD, design, tools, etc.',
                          informationpage: ExplanationPage(),
                        ),
                        SizedBox(height: 20),
                        Information(
                          informationtitle: 'Practicing',
                          totalcourse: '1 course',
                          description:
                              'You will pcartice and follow the step from the video',
                          informationpage: PracticingPage(),
                        ),
                        SizedBox(height: 20),
                        Information(
                          informationtitle: 'Upload',
                          totalcourse: '1 course',
                          description: 'You will upload the project here',
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
