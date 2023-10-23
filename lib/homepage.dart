import 'package:early_shuttel/MypassDrawer.dart';
import 'package:early_shuttel/MyridesDrawer.dart';
import 'package:early_shuttel/Routepage.dart';
import 'package:early_shuttel/Routepagedrawer.dart';
import 'package:early_shuttel/couponDrawer.dart';
import 'package:early_shuttel/evening.dart';
import 'package:early_shuttel/login.dart';
import 'package:early_shuttel/morning.dart';
import 'package:early_shuttel/safetyzoneDrawer.dart';
import 'package:early_shuttel/walletsDrawer.dart';
import 'package:flutter/material.dart';

class homepage extends StatefulWidget {
  const homepage({Key? key}) : super(key: key);

  @override
  State<homepage> createState() => _homepageState();
}

class _homepageState extends State<homepage> {
  late final String title;
  final scaffoldKey = GlobalKey<ScaffoldState>();
  @override

  Widget build(BuildContext context) {

    return DefaultTabController( length: 2,
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor:Color(0xffAFE1AF),
        appBar: AppBar(
        toolbarHeight: 130,
          backgroundColor:Color(0xff13ccae),
          leading: Row(
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(8, 0, 0, 55),
                child: IconButton(onPressed: (){
                  if (scaffoldKey.currentState!.isDrawerOpen) {
                  scaffoldKey.currentState!.closeDrawer();
                  //close drawer, if drawer is open
                } else {
                  scaffoldKey.currentState!.openDrawer();
                  //open drawer, if drawer is closed
                }}, icon: Icon(Icons.menu,size: 40,))
              ),
              // SizedBox(width: 30,),
            ]
          ),
          title: Column(
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(50, 10, 80, 0),
                child: Text('Early Shuttle',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 23),),
              ),

              SizedBox(height: 20,),
              InkWell(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>const routepage()),
                  );
                },

              child:Padding(
                padding: const EdgeInsets.fromLTRB(0, 0, 20, 0),
                child:

                    Padding(
                      padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                      child: Container(
                        height: 50,
                        width: 400,
                        color: Colors.white,


                        child: Padding(
                          padding: const EdgeInsets.all(14.0),
                          child: Row(
                            children: [
                              Text('Search New Route',style: TextStyle(color: Colors.grey,fontSize: 14,fontWeight:FontWeight.normal),),
                              Spacer(),
                              Icon(Icons.search,size: 30,color: Colors.black,)

                            ],
                          ),
                        ),
                      ),
                    ),

                ),
              ),
            ],
          ),
          bottom: TabBar(
            indicatorColor: Colors.orange,
            tabs: [
              Tab(
                child: Text('Morning'),
              ),
              Tab(
                child: Text('Evening'),
              )
            ],
          ),
        ),
        drawer: Drawer(
          child: ListView(
            padding: const EdgeInsets.all(0),
            children: [
              const DrawerHeader(
                decoration: BoxDecoration(
                  color: Color(0xff13ccae),
                ), //BoxDecoration
                child: UserAccountsDrawerHeader(
                  decoration: BoxDecoration(color: Color(0xff13ccae)),
                  accountName: Text(
                    "Sahil Gupta",
                    style: TextStyle(fontSize: 18),
                  ),
                  accountEmail: Text("Suresahil8090@gmail.com"),
                  currentAccountPictureSize: Size.square(50),
                  currentAccountPicture: CircleAvatar(
                    backgroundColor: Colors.grey,
                    child: Text(
                      "SG",
                      style: TextStyle(fontSize: 30.0, color: Colors.white),
                    ), //Text
                  ), //circleAvatar
                ), //UserAccountDrawerHeader
              ), //DrawerHeader
              ListTile(
                leading: const Icon(Icons.content_paste_sharp),
                title: const Text(' My Pass '),
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>My_Pass()));
                },
              ),
              ListTile(
                leading: const Icon(Icons.directions_bus_outlined),
                title: const Text(' My Rides '),
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context)=> My_Ride()));
                },
              ),
              ListTile(
                leading: const Icon(Icons.account_balance_wallet_outlined),
                title: const Text(' Wallets '),
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>Wallets()));
                },
              ),
              ListTile(
                leading: const Icon(Icons.shopping_bag_outlined),
                title: const Text('Corporate Profile'),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              ListTile(
                leading: const Icon(Icons.share_outlined),
                title: const Text('Refer & Earn'),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              ListTile(
                leading: const Icon(Icons.local_offer_outlined),
                title: const Text('Coupons'),
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>Coupons()));
                },
              ),
              ListTile(
                leading: const Icon(Icons.notifications_on_outlined),
                title: const Text('Notifications'),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              ListTile(
                leading: const Icon(Icons.health_and_safety_outlined),
                title: const Text('Safety Zone'),
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>Safety_Zone()));
                },
              ),
              ListTile(
                leading: const Icon(Icons.route_outlined),
                title: const Text('Route Maps'),
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>page3()));
                },
              ),
              ListTile(
                leading: const Icon(Icons.help_outline_outlined),
                title: const Text('Help'),
                onTap: () {
                  Navigator.pop(context);
                },
              ),

              Padding(
                padding: const EdgeInsets.fromLTRB(200, 5, 0, 0),
                child: Text('version 3.9.0',style: TextStyle(color: Colors.grey),),
              ),
              SizedBox(height: 30,)
            ],
          ),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.endDocked,
        floatingActionButton: Padding(
          padding: const EdgeInsets.only(bottom: 30,right: 20),
          child: FloatingActionButton(
            // isExtended: true,
            child: Icon(Icons.face,color: Color(0xff34445e),size: 35,),
            backgroundColor: Colors.white,
            onPressed: () {
              setState(() {
               // i++;
              });
            },
          ),
        ),
        body: TabBarView(
          children: <Widget>[
            morning(),
            evening(),
          ],
        ),
      ),
    );
  }
}
