import 'package:flutter/material.dart';

class Information extends StatelessWidget {
  Information(
      {@required this.informationtitle,
      @required this.totalcourse,
      @required this.description,
      @required this.informationpage});
  final String informationtitle, totalcourse, description;
  final Widget informationpage;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => (informationpage)),
        );
      },
      child: Container(
        width: 330,
        //width: MediaQuery.of(context).size.width * 0.80,
        padding: EdgeInsets.only(top: 20, left: 20, right: 20, bottom: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              informationtitle,
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            Text(totalcourse),
            SizedBox(
              height: 10,
            ),
            Text(description),
          ],
        ),
        decoration: BoxDecoration(
          color: Colors.black12,
          borderRadius: BorderRadius.all(Radius.circular(15)),
        ),
      ),
    );
  }
}
