import 'package:design_ui/informationpage/introductionPage.dart';
import 'package:flutter/material.dart';

class Information extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => (IntroductionPage())),
        );
      },
      child: Container(
        padding: EdgeInsets.only(top: 20, left: 20, right: 20, bottom: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Introduction",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            Text("7 Course"),
            SizedBox(
              height: 10,
            ),
            Text(
                "You will learn about UI, the purpose UI Design, \nhow to Design, etc"),
          ],
        ),
        decoration: BoxDecoration(
          color: Colors.black12,
          borderRadius: BorderRadius.all(Radius.circular(10)),
        ),
      ),
    );
  }
}
