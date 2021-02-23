import 'package:flutter/material.dart';
import 'package:better_player/better_player.dart';

import '../config_reader.dart';

class MyMediaPlayer extends StatefulWidget {
  @override
  _MyMediaPlayerState createState() => _MyMediaPlayerState();
}


class _MyMediaPlayerState extends State<MyMediaPlayer> {
  BetterPlayerController _betterPlayerController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    BetterPlayerDataSource betterPlayerDataSource = BetterPlayerDataSource(
        BetterPlayerDataSourceType.network,
        "https://liveprodeucentral.global.ssl.fastly.net/btv/desktop/eu_live.m3u8");
    _betterPlayerController = BetterPlayerController(
        BetterPlayerConfiguration(),
        betterPlayerDataSource: betterPlayerDataSource);
  }
  @override
  Widget build(BuildContext context) {
    print("From Config File >>> " );
    print(ConfigReader.getIncrementAmount());
    return Scaffold(
      body:  AspectRatio(
        aspectRatio: 16 / 9,
        child: BetterPlayer(
          controller: _betterPlayerController,
        ),
      )
    );
  }
}
