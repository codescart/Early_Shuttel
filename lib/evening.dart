import 'package:early_shuttel/Routepage.dart';
import 'package:early_shuttel/train.dart';
import 'package:flutter/material.dart';

class evening extends StatefulWidget {
  const evening({Key? key}) : super(key: key);

  @override
  State<evening> createState() => _eveningState();
}

class _eveningState extends State<evening> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF9F5EB),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(25.0),
              child: Container(
                height: 250,
                width: 350,
                color: Colors.white,
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.fromLTRB(30,25, 0, 90),
                      child: Image.asset('assets/route2.png',height: 140,),
                    ),
                    Container(
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.fromLTRB(0, 30, 30, 0),
                            child: Text('Pick up near Office',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15,),),
                          ),
                          SizedBox(height: 8,),
                          Text('Vikas Nagar Sector-2,Lucknow',style: TextStyle(fontSize: 14,color: Colors.grey),),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(0, 40, 70, 0),
                            child: Text('Drop near Home',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15,),),
                          ),
                          SizedBox(height: 8,),
                          Text('Jankipuram Sector-H,Lucknow',style: TextStyle(fontSize: 14,color: Colors.grey),),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              child: ElevatedButton(
                  onPressed: () { Navigator.push(context, MaterialPageRoute(builder: (context) => train()),);
                    },
                  style: ElevatedButton.styleFrom(
                      padding: const EdgeInsets.all(0),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10))),
                  child: Ink(
                      decoration: BoxDecoration(
                        //   //
                        // color: Colors.black,

                          gradient: const LinearGradient(
                              colors: [Color(0xff34445e), Color(0xff00aeb8)]),
                          borderRadius: BorderRadius.circular(10)),

                      child: Container(
                          width: 290,
                          height: 40,
                          alignment: Alignment.center,
                          child: const Text(
                            'Quick Book',style: TextStyle(fontSize: 15),
                          )))),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(15, 0, 0, 0),
              child: TextButton(
                  style: TextButton.styleFrom(
                    // primary: Color((0xff0fc5ae))
                      primary: Color(0xff34445e)
                  ),
                  onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => routepage()),);
                  }, child: Text('View More Routes',)),
            )

          ],
        ),
      ),
    );
  }
}
