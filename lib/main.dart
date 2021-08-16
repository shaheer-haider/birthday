import 'package:assets_audio_player/assets_audio_player.dart';
import "package:flutter/material.dart";

import './home.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var audioPlayer = AssetsAudioPlayer();
  @override
  void initState() {
    super.initState();
    audioPlayer.open(Audio('assets/song/song.mp3'),
        autoStart: true, loopMode: LoopMode.single);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Happy Birthday Muntaha",
      home: Home(),
    );
  }
}
