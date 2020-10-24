import 'package:flutter/material.dart';

class Homepage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.white,
        child: Scaffold(
          body: Container(
            padding: EdgeInsets.only(top: 40, left: 30, right: 30),
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
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                        Text(
                          "Welcome to Adobe XD Course",
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
                  height: 25,
                ),
                Text(
                  'Lets learn about UI Design',
                  style: TextStyle(
                      fontSize: 15, height: 1.3, fontWeight: FontWeight.w700),
                ),
              ],
            ),
          ),
        ));
  }
}
