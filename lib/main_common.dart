import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_demo_2021/home_page.dart';
import 'package:provider/provider.dart';

import 'config_reader.dart';
import 'environment.dart';

Future<void> mainCommon(String env) async {
  WidgetsFlutterBinding.ensureInitialized();
  await ConfigReader.initialize();

  Color primaryColor;
  switch (env) {
    case Environment.dev:
      primaryColor = Colors.blue;
      break;
    case Environment.prod:
      primaryColor = Colors.red;
      break;
  }

  runApp(Provider.value(
    value: primaryColor,
    child: MyHomePage(title:"Demo App 2021"),
  ));
}
