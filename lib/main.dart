import 'package:audioplayers/audioplayers.dart';
import 'package:carousel_slider/carousel_slider.dart';
import "package:flutter/material.dart";

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  final List images = [
    'assets/images/1.webp',
    'assets/images/10.webp',
    'assets/images/11.webp',
    'assets/images/12.webp',
    'assets/images/13.webp',
    'assets/images/14.webp',
    'assets/images/15.webp',
    'assets/images/16.webp',
    'assets/images/17.webp',
    'assets/images/18.webp',
    'assets/images/19.webp',
    'assets/images/2.webp',
    'assets/images/20.webp',
    'assets/images/21.webp',
    'assets/images/WhatsApp Image 2021-08-15 at 9.01.55 AM.webp',
    'assets/images/3.webp',
    'assets/images/4.webp',
    'assets/images/5.webp',
    'assets/images/6.webp',
    'assets/images/7.webp',
    'assets/images/8.webp',
    'assets/images/9.webp',
    'assets/images/WhatsApp Image 2021-08-15 at 9.01.56 AM (1).webp',
    'assets/images/WhatsApp Image 2021-08-15 at 9.01.56 AM (2).webp',
    'assets/images/WhatsApp Image 2021-08-15 at 9.01.56 AM.webp',
    'assets/images/WhatsApp Image 2021-08-15 at 9.02.08 AM (1).webp',
    'assets/images/WhatsApp Image 2021-08-15 at 9.02.08 AM (2).webp'
  ];
  @override
  Widget build(BuildContext context) {
    AudioPlayer audioPlayer = AudioPlayer();
    audioPlayer.play("assets/song.mp3");
    return MaterialApp(
      title: "Happy Birthday Muntaha",
      home: Scaffold(
        appBar: AppBar(
          title: Text("Happy Birthday Munno"),
        ),
        body: Column(children: [
          Container(
            width: 100,
            margin: EdgeInsets.only(bottom: 10),
            child: Image.asset("assets/cake.gif"),
          ),
          CarouselSlider(
              options: CarouselOptions(
                height: 450,
                enlargeCenterPage: true,
                enableInfiniteScroll: true,
                autoPlay: true,
                autoPlayAnimationDuration: Duration(seconds: 1),
              ),
              items: images
                  .map((e) => Stack(
                        fit: StackFit.loose,
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(20),
                            child: Image.asset(
                              e,
                              fit: BoxFit.cover,
                            ),
                          )
                        ],
                      ))
                  .toList()),
        ]),
      ),
    );
  }
}
