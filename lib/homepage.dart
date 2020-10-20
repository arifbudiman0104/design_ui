import 'package:flutter/material.dart';

class Homepage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Design UI Course'),
        backgroundColor: Colors.orange,
      ),
      body: Container(
        child: Center(
          child: Text('Kelompok A3M'),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.orange,
        child: Icon(Icons.add),
        onPressed: () {},
      ),
    );
  }
}
