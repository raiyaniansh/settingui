import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:settingui/screen/home/home_provider.dart';
import 'package:settingui/screen/home/home_screen.dart';
import 'package:settingui/screen/home/i_home.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        MultiProvider(providers: [
          ChangeNotifierProvider(create: (context) => HomeProvider(),),
        ])
      ],
      child: Platform.isAndroid?ios():android(),
    ),
  );
}

Widget android()
{
  return MaterialApp(
    debugShowCheckedModeBanner: false,
    routes: {
      '/':(context) => Homescreen(),
    },
  );
}

Widget ios()
{
  return CupertinoApp(
    debugShowCheckedModeBanner: false,
    routes: {
      '/':(context) => IHomeScreen(),
    },
  );
}