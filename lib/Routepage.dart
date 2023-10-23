import 'package:early_shuttel/homepage.dart';
import 'package:flutter/material.dart';

class routepage extends StatefulWidget {
  const routepage({Key? key}) : super(key: key);

  @override
  State<routepage> createState() => _routepageState();
}

class _routepageState extends State<routepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   toolbarHeight: 100,
      //   backgroundColor:Color(0xff34445e),
      //   // leading: Row(
      //   //   children: [
      //   //     Icon(),
      //   //   ],
      //   // ),
      // ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 30,),
            Container(
              height: 170,
              width: 399,
              color: Color(0xff13ccae),

              child: Row(

                children: [
                  Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.fromLTRB(10, 10,15, 0),
                        child: IconButton(onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context)=> homepage()),);}, icon:Icon(Icons.arrow_back,color: Colors.white,size: 35,)),
                      )
                    ],
                  ),
                  SizedBox(height: 40,),
                  Column(
                    children: [
                      SizedBox(height: 20,),
                         Padding(
                           padding: const EdgeInsets.fromLTRB(0, 4, 0, 0),
                           child: Icon(Icons.expand_circle_down_sharp,color: Colors.white,),
                         ),
                         Padding(
                           padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                           child: Text('*',style: TextStyle(color: Colors.white),),
                         ),
                         Padding(
                           padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                           child: Text('*',style: TextStyle(color: Colors.white),),
                         ),
                         Padding(
                           padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                           child: Text('*',style: TextStyle(color: Colors.white),),
                         ),
                         Padding(
                           padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                           child: Icon(Icons.location_on_outlined,color: Colors.white,),
                         ),
                    ],
                  ),
                  Column(
                    children: [
                      SizedBox(height: 20,),
                        Padding(
                          padding: const EdgeInsets.all(5),
                          child: Center(
                            child: Container(
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                borderRadius: BorderRadius.circular(6)
                              ),
                              height: 40,
                              width: 200,

                              child: Padding(
                                padding: const EdgeInsets.only(left: 10),
                                child: TextFormField(
                                  decoration: InputDecoration(
                                    contentPadding: EdgeInsets.only(bottom: 6),
                                      focusedBorder: UnderlineInputBorder(borderSide: BorderSide(color: Colors.transparent)),
                                    hintText: 'Enter the Source',hintStyle:TextStyle(color: Colors.grey,fontSize: 14)
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      SizedBox(height: 15,),
                      Center(
                        child: Container(
                          decoration: BoxDecoration(
                              color: Colors.white,
                            borderRadius: BorderRadius.circular(6)
                          ),
                          height: 40,
                          width: 200,

                          child: Padding(
                            padding: const EdgeInsets.only(left: 10),
                            child: TextFormField(
                              decoration: InputDecoration(
                                contentPadding: EdgeInsets.only(bottom: 6,),
                                focusedBorder: UnderlineInputBorder(borderSide: BorderSide(color: Colors.transparent)),
                                hintText: 'Where do you Want to go?',hintStyle: TextStyle(color: Colors.grey,fontSize: 14)
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),

                  Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.fromLTRB(5, 50, 0, 0),
                        child: IconButton(onPressed: (){},
                            icon: Icon(Icons.unfold_less,color: Colors.white,size: 35,)),
                        //child: Icon(Icons.unfold_less,color: Colors.white,size: 35,),
                      )
                    ],
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(0,20, 240, 0),
              child: Text('Quick Selections',style: TextStyle(color:Colors.black,fontSize:15,decoration: TextDecoration.underline,),),
            ),
            SizedBox(height: 20,),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(15, 0, 0, 0),
                  child: Container(
                    height: 40,
                    width: 140,
                    decoration: BoxDecoration(
                      border: Border.all(width:1,color: Colors.grey,),
                    ),

                    child: Row(
                      children: [
                        Icon(Icons.location_on,color: Colors.black,size: 23,),
                        Text('Current Location',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),)
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Container(
                    height: 40,
                    width: 78,
                    decoration: BoxDecoration(
                      border: Border.all(width:1,color: Colors.grey,),
                    ),

                    child: Row(
                      children: [
                        Icon(Icons.home,color: Colors.black,size: 28,),
                        Text(' Home',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),)
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 40,
                    width: 90,
                    decoration: BoxDecoration(
                      border: Border.all(width:1,color: Colors.grey,),
                    ),

                    child: Row(
                      children: [
                        Icon(Icons.shopping_bag,color: Colors.black,size: 25,),
                        Text(' Office',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),)
                      ],
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 20,),
            Padding(
              padding: const EdgeInsets.only(right: 220),
              child: Text('Recent Searches',style: TextStyle(fontSize: 15),),
            )
          ],
        ),
      ),
    );
  }
}
