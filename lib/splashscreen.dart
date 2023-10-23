import 'package:early_shuttel/login.dart';
import 'package:flutter/material.dart';
import 'dart:async';

class splash extends StatefulWidget {
  const splash({Key? key}) : super(key: key);

  @override
  State<splash> createState() => _splashState();
}
@override

class _splashState extends State<splash> {
  @override
  void initState() {
    super.initState();
    Timer(
        Duration(seconds: 2),
            () =>
            Navigator.of(context).pushReplacement(MaterialPageRoute(
                builder: (BuildContext context) => login())));
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff8edf53),
      body: Center(
        child: Column(
          children: [
            SizedBox(height: 250,),
            Image.asset('assets/bus2.gif')
          ],
        ),
      ),
    );
  }
}



