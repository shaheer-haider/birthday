import 'package:carousel_slider/carousel_slider.dart';
import "package:flutter/material.dart";

class MySlider extends StatelessWidget {
  final List _image = [
    'assets/images/1.webp',
    'assets/images/14.webp',
    'assets/images/15.webp',
    'assets/images/16.webp',
    'assets/images/17.webp',
    'assets/images/18.webp',
    'assets/images/19.webp',
    'assets/images/20.webp',
    'assets/images/21.webp',
    'assets/images/WhatsApp Image 2021-08-15 at 9.01.55 AM.webp',
    'assets/images/WhatsApp Image 2021-08-15 at 9.01.56 AM (1).webp',
    'assets/images/WhatsApp Image 2021-08-15 at 9.01.56 AM (2).webp',
    'assets/images/WhatsApp Image 2021-08-15 at 9.01.56 AM.webp',
    'assets/images/WhatsApp Image 2021-08-15 at 9.02.08 AM (1).webp',
    'assets/images/WhatsApp Image 2021-08-15 at 9.02.08 AM (2).webp'
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
