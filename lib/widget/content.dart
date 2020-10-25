import 'package:flutter/material.dart';

class Content extends StatelessWidget {
  Content(
      {@required this.number,
      @required this.contenttitle,
      @required this.time,
      @required this.contentpage});

  final String number, contenttitle, time;
  final Widget contentpage;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => (contentpage),
            ));
      },
      child: Container(
        decoration: BoxDecoration(
          color: Colors.black12,
          borderRadius: BorderRadius.all(Radius.circular(15)),
        ),
        padding: EdgeInsets.only(top: 10, left: 10, right: 10, bottom: 10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: 25,
              //color: Colors.blue,
              child: Text(number,
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold)),
            ),
            SizedBox(
              width: 10,
            ),
            Container(
              width: 220,
              child: Text(contenttitle,
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold)),
            ),
            SizedBox(
              width: 10,
            ),
            Container(
              child: Text(time,
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold)),
            ),
          ],
        ),
      ),
    );
  }
}
