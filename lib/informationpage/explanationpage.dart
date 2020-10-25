import 'package:design_ui/informationpage/explanationcontent/exp1.dart';
import 'package:design_ui/informationpage/explanationcontent/exp2.dart';
import 'package:design_ui/informationpage/explanationcontent/exp3.dart';
import 'package:design_ui/informationpage/explanationcontent/exp4.dart';
import 'package:design_ui/widget/content.dart';
import 'package:flutter/material.dart';

class ExplanationPage extends StatelessWidget {
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
                          "Explanation Tools",
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
                      "4 Course",
                      style: TextStyle(
                          fontSize: 15,
                          color: Colors.black,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      "You will learn Adobe XD, Design, Tools, etc.",
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
              'Course Content',
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
                          contenttitle: "The reason why we use Adobe XD",
                          time: "05:00",
                          contentpage: Exp1(),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Content(
                          number: "02",
                          contenttitle: "Design : Icon, Text, Color",
                          time: "03:30",
                          contentpage: Exp2(),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Content(
                          number: "03",
                          contenttitle: "Adobe Tools",
                          time: "07:29",
                          contentpage: Exp3(),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Content(
                          number: "04",
                          contenttitle: "Tips design",
                          time: "09:05",
                          contentpage: Exp4(),
                        ),
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
