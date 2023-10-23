
import 'package:early_shuttel/otp4.dart';

import 'package:early_shuttel/ragister.dart';
import 'package:flutter/material.dart';


class login extends StatefulWidget {
  const login({Key? key}) : super(key: key);

  @override
  State<login> createState() => _loginState();
}

class _loginState extends State<login> {
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff8edf53),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 100,),
            Text("Welcome to Early Shuttle Family",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 21),),
            SizedBox(height: 10,),
            Text('Direct to Office,close to home',style:TextStyle(color: Colors.grey,fontSize: 14),),
            SizedBox(height: 25,),
            Container(
              width: 320,
              child: TextField(
                style: TextStyle(fontSize:17,fontWeight: FontWeight.bold),
                maxLength: 10,
                  keyboardType: TextInputType.phone,
                  decoration: InputDecoration(

                    border: OutlineInputBorder(

                        borderRadius: BorderRadius.circular(20)
                    ),
                    prefixIcon: Icon(Icons.phone_android,size: 25,color: Colors.black,),
                    filled: true,
                    counterText: "",
                    fillColor: Colors.white,
                    hintText: 'Phone Number',
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
                  )
              ),
            ),
                SizedBox(height: 20,),

                Row(
                  children: [
                    Checkbox(
                      checkColor: Colors.white,
                      // fillColor: MaterialStateProperty.resolveWith(getcolor),
                      value: isChecked,
                      onChanged: (bool? value) {
                        setState(() {
                          isChecked = value!;

                        });
                      },
                    ),

                     Flexible(
                       child:    Text.rich(
                         TextSpan(
                             text: 'I`ve read and agreed to share my',
                             style: TextStyle(fontSize: 11),
                             children: <TextSpan>[
                               TextSpan(
                                 text: ' Personally \n Identifiable Information and other Information',style: TextStyle(color:Colors.black,fontSize: 13,decoration: TextDecoration.underline),),
                             ]          )
                     ),)
                      ],
                    ),
            // if (_isChecked)
            // Container(
            //     decoration: BoxDecoration(
            //         color: Colors.red,
            //         borderRadius: BorderRadius.circular(80.0)
            //     ),
            //     child: Padding(
            //         padding: EdgeInsets.all(10.0),
            //         child: Text('Please accept the terms and conditions to proceed...')
            //     )
            // )
            //     : Container(),
            // SizedBox(height: 20.0),
            // ElevatedButton(
            //     child: Text('Submit'),
            //     onPressed: (){
            //       // for your form validation
            //       if(_formKey.currentState.validate()){
            //         // do your success operation here!
            //         // checking for the rememberValue
            //         // and setting the message bool data
            //         if(rememberMe != true)
            //           setState(() => showErrorMessage = true);
            //         else
            //           setState(() => showErrorMessage = false);
            //       }
            //     }
            // )


            SizedBox(height: 30,),

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
                    Navigator.push(context, MaterialPageRoute(builder: (context) => const otp4())
                    );
                  },

                  child: Text(' Verify',style: TextStyle(fontSize: 18),)),
            ),
            SizedBox(height: 200,),
            Text('By Sigining in,you agree to Shuttl`s.',style: TextStyle(color: Colors.black,fontSize: 12),),
            TextButton(onPressed: (){}, child: Text('Terms and Conditions',style: TextStyle(color: Colors.black,fontSize: 12,decoration: TextDecoration.underline),))





          ],
        ),
      ),
    );
  }
}
