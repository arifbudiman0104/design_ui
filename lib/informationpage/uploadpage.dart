import 'package:design_ui/widget/content.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import 'practicingcontent/practice.dart';

class UploadPage extends StatelessWidget {
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
                          "Unggah",
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
                      "1 Vidio",
                      style: TextStyle(
                          fontSize: 15,
                          color: Colors.black,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      "Unggah project anda",
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
              'Unggah Projek akhir adobe xd anda disini',
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
                        // Content(
                        //   number: "01",
                        //   contenttitle: "Unggah link project anda disini",
                        //   time: "05:00",
                        //   contentpage: Practice(),
                        // ),
                        RaisedButton(
                          onPressed: _launchURL,
                          child: Text('Upload'),
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

_launchURL() async {
  const url =
      'https://umyac-my.sharepoint.com/:f:/g/personal/arif_budiman_ft18_mail_umy_ac_id/EnfTO_qRENRHpkXABmdxpmMBsEUBBYGzOOIvrW_svIr1ZQ?e=ARHGTi';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}
