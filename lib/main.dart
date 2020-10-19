import 'package:flutter/material.dart';
import 'package:world_time_app/pages/choose_location.dart';
import 'package:world_time_app/pages/home.dart';
import 'package:world_time_app/pages/loading.dart';

void main()=> runApp(MyApp());


class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      //home: Myhome(),
      initialRoute: '/',
      routes: {
        '/': (context)=>Loading(),
        '/home':(context)=>Myhome(),
        '/location':(context)=>ChooseLocation(),
      },
    );
  }
}


