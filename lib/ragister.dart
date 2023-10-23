import 'package:early_shuttel/Routepage.dart';
import 'package:flutter/material.dart';
import 'package:early_shuttel/map1.dart';
import 'dart:async';
import 'package:early_shuttel/homepage.dart';

class register extends StatefulWidget {
  const register({Key? key}) : super(key: key);

  @override
  State<register> createState() => _registerState();
}

class _registerState extends State<register> {
  var power = true;
  // var gender =true;
  String? gender;
    @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:Color(0xffAFE1AF),
    body: SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(height: 120,),
          Padding(
            padding: const EdgeInsets.fromLTRB(20, 0, 0, 0),
            child: Text('Superb!!!',style: TextStyle(color: Colors.black,fontSize: 20,fontWeight: FontWeight.bold),),
          ),
          SizedBox(height: 10,),
          Padding(
            padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
            child: Text('Lets get Shuttling',style: TextStyle(color: Colors.black,fontSize:15,),),
          ),
          SizedBox(height: 50,),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Container(
              width: 340,
              child: TextField(
                style: TextStyle(fontSize:17,fontWeight: FontWeight.bold,),
                  decoration: InputDecoration(

                    border: OutlineInputBorder(
                    ),
                    filled: true,
                    fillColor: Colors.white,
                    hintText: 'Name',
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20.0),
                        borderSide: BorderSide(
                          color: Colors.transparent,
                        )
                    ),

                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20.0),
                        borderSide: BorderSide(
                          color: Colors.transparent,
                        )
                    ),
                ),

              ),
            ),),
            SizedBox(height: 20,),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Container(
                width: 340,
                child: TextField(
                  style: TextStyle(fontSize:17,fontWeight: FontWeight.bold),
                  decoration: InputDecoration(

                    border: OutlineInputBorder(
                    ),
                    filled: true,
                    fillColor: Colors.white,
                    hintText: 'Email Id',
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20.0),
                        borderSide: BorderSide(
                          color: Colors.transparent,
                        )
                    ),

                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20.0),
                        borderSide: BorderSide(
                          color: Colors.transparent,
                        )
                    ),
                  ),

                ),
              ),
          ),
      //     SizedBox(height: 20,),
      //     Text('Gender',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,decoration: TextDecoration.underline),),
      //     SizedBox(height: 20,),
      //
      // RadioListTile(
      //   title: Text("Male",style: TextStyle(fontWeight: FontWeight.bold),),
      //   value: "male",
      //   groupValue: gender,
      //   onChanged: (value){
      //     setState(() {
      //       gender = value.toString();
      //     });
      //   },
      // ),
      //
      // RadioListTile(
      //   title: Text("Female",style: TextStyle(fontWeight: FontWeight.bold),),
      //   value: "female",
      //   groupValue: gender,
      //   onChanged: (value){
      //     setState(() {
      //       gender = value.toString();
      //     });
      //   },
      // ),
      //
      // RadioListTile(
      //   title: Text("Other",style: TextStyle(fontWeight: FontWeight.bold),),
      //   value: "other",
      //   groupValue: gender,
      //   onChanged: (value){
      //     setState(() {
      //       gender = value.toString();
      //     });
      //   },
      // ),
          SizedBox(height: 40,),
          Container(
            width: 330,

            child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: Colors.black,
                  elevation: 30,

                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)
                  ),

                ),


                onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) =>  homepage())
                  );
                },

                child: Text('Next',style: TextStyle(fontSize: 18),)),
          ),

      ],
      ),
    ),
    
    );
  }
}
