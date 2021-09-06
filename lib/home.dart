import "package:flutter/material.dart";

import './slider.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Happy Birthday Ifra"),
          backgroundColor: Colors.pink.shade400,
        ),
        body: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/images/bg.jpeg"),
              fit: BoxFit.cover,
            ),
          ),
          child: Column(
            children: [
              Container(
                width: 100,
                margin: EdgeInsets.only(bottom: 10),
                child: Image.asset("assets/cake.gif"),
              ),
              MySlider(),
            ],
          ),
        ));
  }
}
