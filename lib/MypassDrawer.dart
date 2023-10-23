import 'package:flutter/material.dart';
class My_Pass extends StatefulWidget {
  const My_Pass({Key? key}) : super(key: key);

  @override
  State<My_Pass> createState() => _My_PassState();
}

class _My_PassState extends State<My_Pass> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: <Widget>[
          IconButton(onPressed: (){},
              icon: Icon(Icons.info_outline_rounded))

        ],
        backgroundColor:Color(0xff13ccae),
        title: Text('My pass',style: TextStyle(fontSize: 19),

      ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 25),
            child: CircleAvatar(
              backgroundColor: Color(0xff34445e),
              radius: 75,
              child: CircleAvatar(
                radius: 68,
                backgroundImage: AssetImage("assets/busMypass.png"),
              ),
            ),
          ),
         // Image.asset("assets/busMypass.png"),
          SizedBox(height: 20,),
          Text("       Don't pass up the chance to save big!",style: TextStyle(fontSize: 18,fontWeight: FontWeight.w700),),
          Padding(
            padding: const EdgeInsets.fromLTRB(5, 10, 0, 0),
            child: Text('      Maximise your savings with the perfect\n                            shuttl Pass.',
              style: TextStyle(color: Colors.grey,),),
          ),
          Container(
            child: Padding(
              padding: const EdgeInsets.fromLTRB(25, 50, 0, 0),
              child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                      padding: const EdgeInsets.all(0),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10))),
                  child: Ink(
                      decoration: BoxDecoration(
                          gradient: const LinearGradient(
                              colors: [Color(0xff34445e), Color(0xff00aeb8)]),
                          borderRadius: BorderRadius.circular(10)),
                      child: Container(
                          width: 200,
                          height: 50,
                          alignment: Alignment.center,
                          child: const Text(
                            'KNOW MORE',style: TextStyle(fontSize: 17,fontWeight: FontWeight.bold),
                          )))),
            ),
          ),
        ],
      )
    );
  }
}
