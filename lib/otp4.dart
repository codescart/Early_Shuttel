import 'package:early_shuttel/ragister.dart';
import 'package:flutter/material.dart';
import 'package:pinput/pinput.dart';

class otp4 extends StatefulWidget {
  const otp4({Key? key}) : super(key: key);

  @override
  State<otp4> createState() => _otp4State();
}

class _otp4State extends State<otp4> {
  get child => null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff8edf53),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 120),
            Container(
              child: Padding(
                padding: const EdgeInsets.fromLTRB(30, 0, 0, 0),
                child: Text('Enter the OTP',style: TextStyle(fontSize: 22,fontWeight: FontWeight.bold),),
              ),
            ),
            SizedBox(height: 50,),
            Center(
              
              child: Pinput(
                length: 4,
                pinputAutovalidateMode: PinputAutovalidateMode.onSubmit,
                showCursor: true,
              ),
              ),
            SizedBox(height: 17,),

            Padding(
              padding: const EdgeInsets.fromLTRB(50,0, 0, 0),
              child: TextButton(onPressed: (){}, child:Text('Resend OTP',style: TextStyle(color: Colors.black,fontSize: 12,),),
              ),
            ),
            SizedBox(height:25),

            Padding(
              padding: const EdgeInsets.fromLTRB(30, 0, 0, 0),
              child: Container(
                width: 300,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: Colors.black,
                    side: BorderSide(color: Colors.black,width: 2),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(32)
                    ),
                  ),
                  onPressed: (){ Navigator.push(context, MaterialPageRoute(builder: (context) =>  register())
                  );},
                  child: Text('  Verify  ',style: TextStyle(fontSize: 25,color: Colors.white),),

                ),
              ),
            )
          ],
        )
      ),
    );
  }
}
