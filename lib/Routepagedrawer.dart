import 'package:flutter/material.dart';

class page3 extends StatefulWidget {
  const page3({Key? key}) : super(key: key);

  @override
  State<page3> createState() => _page3State();
}

class _page3State extends State<page3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor:Color(0xff13ccae),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 180,),
            Image.asset('assets/map32.jpg',height: 200,)
          ],
        ),
      ),
    );
  }
}
