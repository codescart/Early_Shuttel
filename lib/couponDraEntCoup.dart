import 'package:flutter/material.dart';
class Enter_Coupon extends StatefulWidget {
  const Enter_Coupon({Key? key}) : super(key: key);

  @override
  State<Enter_Coupon> createState() => _Enter_CouponState();
}

class _Enter_CouponState extends State<Enter_Coupon> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 10,top: 30),
              child: Text("Please enter the coupon code here",style: TextStyle(fontSize: 17),),
            ),
            Text("to avail an offer.",style: TextStyle(fontSize: 17)),
            Padding(
              padding: const EdgeInsets.only(top: 25),
              child: Text("Enter Coupon Code",style: TextStyle(color: Color(0xff00acb6),fontSize: 17 ),),
            ),
            Padding(
              padding: const EdgeInsets.all(15),
              child: TextField(
                textAlign: TextAlign.center,
                cursorColor: Color(0xff00acb6),
                cursorHeight: 29,
                decoration: InputDecoration(

                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(
                      color: Color(0xff00acb6),
                      width: 2,
                    )
                  ),
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(
                      color: Color(0xff00acb6),
                      width: 2,
                    )
                  )
                ),
              ),
            ),
            SizedBox(height: 200,),
            Container(
              child: Padding(
                padding: const EdgeInsets.fromLTRB(3, 30, 0, 0),
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
                            width: 350,
                            height: 50,
                            alignment: Alignment.center,
                            child: const Text(
                              'SAVE',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),
                            )))),
              ),
            ),
            SizedBox(height: 25,),
            Text("By continuing, I agree to Shuttl's",style: TextStyle(color: Colors.grey),),
            TextButton(onPressed: (){},
                child: Text("User Agreement and Terms of Service",style: TextStyle(color: Colors.grey,decoration: TextDecoration.underline),))

          ],
        ),
      ),
    );
  }
}
