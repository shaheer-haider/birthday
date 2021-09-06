import 'package:carousel_slider/carousel_slider.dart';
import "package:flutter/material.dart";

class MySlider extends StatelessWidget {
  final List _image = [
    'assets/images/1.jpeg',
    'assets/images/2.jpeg',
    'assets/images/3.jpeg',
    'assets/images/4.jpeg',
    'assets/images/5.jpeg',
    'assets/images/6.jpeg',
    'assets/images/7.jpeg',
    'assets/images/8.jpeg',
    'assets/images/9.jpeg',
    'assets/images/11.jpeg',
    'assets/images/12.jpeg',
  ];
  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      options: CarouselOptions(
        height: 450,
        enlargeCenterPage: true,
        enableInfiniteScroll: true,
        autoPlay: true,
        autoPlayAnimationDuration: Duration(seconds: 1),
      ),
      items: _image
          .map(
            (e) => Stack(
              fit: StackFit.loose,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Image.asset(
                    e,
                    fit: BoxFit.cover,
                  ),
                ),
              ],
            ),
          )
          .toList(),
    );
  }
}
