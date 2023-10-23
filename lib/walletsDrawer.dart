import 'package:flutter/material.dart';
class Wallets extends StatefulWidget {
  const Wallets({Key? key}) : super(key: key);

  @override
  State<Wallets> createState() => _WalletsState();
}

class _WalletsState extends State<Wallets> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff13ccae),
        title: Text("Wallets",style: TextStyle(fontSize: 19)),
      ),
      body: Column(
        children:<Widget> [
          ListTile(
            onTap: (){},
            leading: Image.asset("assets/paytm.png",height: 120,width:50,),
            trailing: Text("+ CONNECT",style: TextStyle(color: Colors.lightBlueAccent,fontSize: 17),),
          ),
          Divider(),
          ListTile(
            onTap: (){},
            leading: Text("Shuttl",style: TextStyle(color: Colors.lightBlueAccent,fontSize: 22,fontWeight: FontWeight.bold),),
            trailing: Padding(
              padding: const EdgeInsets.only(right: 63),
              child: Text("₹0",style: TextStyle(fontSize: 20),),
            ),
          ),
          Divider()

        ],
      ),
    );
  }
}
