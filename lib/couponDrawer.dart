import 'package:early_shuttel/couponDraEntCoup.dart';
import 'package:flutter/material.dart';
class Coupons extends StatefulWidget {
  const Coupons({Key? key}) : super(key: key);

  @override
  State<Coupons> createState() => _CouponsState();
}

class _CouponsState extends State<Coupons> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(length: 2,
      child: Scaffold(
        appBar: AppBar(
          toolbarHeight: 75,

          backgroundColor:Color(0xff13ccae),
          title: Text("Coupons",style: TextStyle(fontSize: 19),
          ),
          bottom: TabBar(
            indicatorColor: Colors.orange,
            tabs: [
              Tab(
                child: Text("ENTER COUPON"),
              ),
              Tab(
                child: Text("SAVED COUPONS"),
              )
            ],
          ),
        ),
        body: TabBarView(
          children: [
            Enter_Coupon(),
            Padding(padding:EdgeInsets.only(top: 250,left: 55),
               child: Text("You do not have any saved coupons",style: TextStyle(fontSize: 15),)
            )

          ],
        ),
      ),
    );
  }
}
