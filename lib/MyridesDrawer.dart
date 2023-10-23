import 'package:early_shuttel/MyridesDraCurrent.dart';
import 'package:flutter/material.dart';
class My_Ride extends StatefulWidget {
  const My_Ride({Key? key}) : super(key: key);

  @override
  State<My_Ride> createState() => _My_RideState();
}

class _My_RideState extends State<My_Ride> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(length: 2,
      child: Scaffold(
        appBar: AppBar(
          toolbarHeight: 75,

          backgroundColor:Color(0xff13ccae),
          title: Text("My Rides",style: TextStyle(fontSize: 19),
        ),
          bottom: TabBar(
            indicatorColor: Colors.orange,
            tabs: [
              Tab(
                child: Text("ONGOING RIDE"),
              ),
              Tab(
                child: Text("HISTORY"),
              )
            ],
          ),
        ),
        body: TabBarView(
          children: [
            Current(),
            Current(),
          ],
        ),
      ),
    );
  }
}
