import 'package:flutter/material.dart';
import 'package:flutter_demo_2021/src/m3u8_player_screen.dart';
import 'package:provider/provider.dart';

import 'config_reader.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {


  
  @override
  Widget build(BuildContext context) {
    print('Secret Key >>> ${ConfigReader.getSecretKey()}');
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Provider.of<Color>(context),
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              RaisedButton(
                  child: Text(
                    "M3u8 Player",
                    style: TextStyle(color: Colors.black),
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => MyMediaPlayer()),
                    );
                  }),
            ],
          ),
        ),
      ),
    );
  }
}
