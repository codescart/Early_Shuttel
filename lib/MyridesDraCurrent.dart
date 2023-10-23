import 'package:flutter/material.dart';
class Current extends StatefulWidget {
  const Current({Key? key}) : super(key: key);

  @override
  State<Current> createState() => _CurrentState();
}

class _CurrentState extends State<Current> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text("You don't have any active rides",style: TextStyle(fontSize: 15,color: Colors.grey),)
      ],
    );
  }
}
