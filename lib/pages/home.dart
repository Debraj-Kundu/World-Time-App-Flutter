import 'package:flutter/material.dart';


class Myhome extends StatefulWidget {
  @override
  _MyhomeState createState() => _MyhomeState();
}

class _MyhomeState extends State<Myhome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: Mybody()),
    );
  }
}

class Mybody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Text(
      'HOME SCREEN'
    );
  }
}