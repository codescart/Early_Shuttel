import 'package:flutter/material.dart';

class train extends StatefulWidget {
  const train({Key? key}) : super(key: key);

  @override
  State<train> createState() => _trainState();
}

class _trainState extends State<train> {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Color(0XFFF8F8FF),
      appBar: AppBar(
        elevation: 20,
        foregroundColor: Colors.black,
        backgroundColor: Colors.white,

        title: Text('Select the Route',style: TextStyle(color: Colors.black),),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [

          Card(
          elevation:20,
          child:
            Container(
              height: 260,
              width: MediaQuery.of(context).size.width*0.99,
              color: Colors.white,
              child: Column(
                children: [
                  SizedBox(height: 10,),
                  Row(
                    children: [
                      Text('   Route 50-Sohna Road-Paschim Vihar',style: TextStyle(fontSize: 15,color: Colors.grey),),
                      SizedBox(width: 50,),
                      Image.asset('assets/map2.png',height: 25,)
                    ],
                  ),
                  SizedBox(height: 20,),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: Column(
                          children: [
                            Image.asset('assets/circle.png',height: 20,),
                            Text('|',style: TextStyle(fontSize: 35),),
                            Image.asset('assets/mapicon1.png',height: 25,)
                          ],
                        ),
                      ),
                      Column(
                        children: [
                          Row(
                            children: [
                              Text('Sector-21 Metro Station \n (gate No.2)Dwarka',style: TextStyle(fontSize: 16),),
                              SizedBox(width: 35,),
                              Image.asset('assets/bus5.png',height: 20,),
                              SizedBox(width: 10,),
                              Text('Distance \n  0.08 km',style: TextStyle(fontSize: 13),)
                            ],
                          ),
                          Divider(thickness: 2,color: Colors.black,),
                          Row(
                            children: [
                              Text('Paschim Vihar East Metro \n Station',style: TextStyle(fontSize: 16),),
                              SizedBox(width: 25,),
                              Image.asset('assets/bus5.png',height: 20,),
                              SizedBox(width: 10,),
                              Text('Distance \n  0.08 km',style: TextStyle(fontSize: 13),)
                            ],
                          )
                        ],
                      )
                    ],
                  ),
                  SizedBox(height: 30,),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(30, 0, 0, 0),
                    child: Container(
                      height: 60,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: [
                          Column(
                            children: [
                      Card(
                      elevation:20,
                        child:
                              Container(
                                height: 30,
                                width: 80,
                                color: Color(0xffFFEBCD),
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text('06:25 AM',style: TextStyle(fontSize: 14),),
                                ),
                              ),),
                              Text('0',style: TextStyle(fontSize: 15,color: Colors.red,),)
                            ],
                          ),
                          SizedBox(width: 40,),
                          Column(
                            children: [
                              Card(
                                elevation:20,
                                child:
                              Container(
                                height: 30,
                                width: 80,
                                color: Color(0xffFFEBCD),

                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text('08:25 AM',style: TextStyle(fontSize: 14),),
                                ),
                              ),),
                              Text('55',style: TextStyle(fontSize: 15,color: Colors.green,),)
                            ],
                          ),
                          SizedBox(width: 40,),
                          Column(
                            children: [
                              Card(
                                elevation:20,
                                child:
                              Container(
                                height: 30,
                                width: 80,
                                color: Color(0xffFFEBCD),
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text('10:30 AM',style: TextStyle(fontSize: 14),),
                                ),
                              ),),
                              Text('20',style: TextStyle(fontSize: 15,color: Colors.green,),)
                            ],
                          ),
                          SizedBox(width: 40,),
                          Column(
                            children: [
                              Card(
                                elevation:20,
                                child:
                              Container(
                                height: 30,
                                width: 80,
                                color: Color(0xffFFEBCD),
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text('11:50 AM',style: TextStyle(fontSize: 14),),
                                ),
                              ),),
                              Text('00',style: TextStyle(fontSize: 15,color: Colors.red,),)
                            ],
                          ),

                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),

            // 2nd container
            SizedBox(height: 8,),
            Container(
              height: 270,
              width: MediaQuery.of(context).size.width*0.99,
              color: Colors.white,
              child: Column(
                children: [
                  SizedBox(height: 10,),
                  Row(
                    children: [
                      Text('   Route 32-Dwarka Mor-Sector 56 \n   Golf Course Road',style: TextStyle(fontSize: 15,color: Colors.grey),),
                      SizedBox(width: 50,),
                      Image.asset('assets/map2.png',height: 25,)
                    ],
                  ),
                  SizedBox(height: 20,),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: Column(
                          children: [
                            Image.asset('assets/circle.png',height: 20,),
                            Text('|',style: TextStyle(fontSize: 35),),
                            Image.asset('assets/mapicon1.png',height: 25,)
                          ],
                        ),
                      ),
                      Column(
                        children: [
                          Row(
                            children: [
                              Text('Sector-21 Metro Station \n (gate No.2)Dwarka',style: TextStyle(fontSize: 16),),
                              SizedBox(width: 35,),
                              Image.asset('assets/bus5.png',height: 20,),
                              SizedBox(width: 10,),
                              Text('Distance \n  0.18 km',style: TextStyle(fontSize: 13),)
                            ],
                          ),
                          Divider(thickness: 2,color: Colors.black,),
                          Row(
                            children: [
                              Text('Rohini Vihar East Metro \n Station',style: TextStyle(fontSize: 16),),
                              SizedBox(width: 25,),
                              Image.asset('assets/bus5.png',height: 20,),
                              SizedBox(width: 10,),
                              Text('Distance \n  0.78 km',style: TextStyle(fontSize: 13),)
                            ],
                          )
                        ],
                      )
                    ],
                  ),
                  SizedBox(height: 30,),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(30, 0, 0, 0),
                    child: Container(
                      height: 60,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: [
                          Column(
                            children: [
                              Card(
                                elevation:20,
                              child: Container(
                                height: 30,
                                width: 80,
                                color: Color(0xffFFEBCD),
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text('03:20 PM',style: TextStyle(fontSize: 14),),
                                ),
                              ),
                              ),
                              Text('10',style: TextStyle(fontSize: 15,color: Colors.green,),)
                            ],
                          ),
                          SizedBox(width: 40,),
                          Column(
                            children: [
                              Card(
                                elevation:20,
                                child:
                              Container(
                                height: 30,
                                width: 80,
                                color: Color(0xffFFEBCD),
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text('05:35 PM',style: TextStyle(fontSize: 14),),
                                ),
                              ),),
                              Text('00',style: TextStyle(fontSize: 15,color: Colors.red,),)
                            ],
                          ),
                          SizedBox(width: 40,),
                          Column(
                            children: [
                              Card(
                                elevation:20,
                                child:
                              Container(
                                height: 30,
                                width: 80,
                                color: Color(0xffFFEBCD),
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text('07:20 PM',style: TextStyle(fontSize: 14),),
                                ),
                              ),),
                              Text('25',style: TextStyle(fontSize: 15,color: Colors.green,),)
                            ],
                          ),
                          SizedBox(width: 40,),
                          Column(
                            children: [
                              Card(
                                elevation:20,
                                child:
                              Container(
                                height: 30,
                                width: 80,
                                color: Color(0xffFFEBCD),
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text('09:10 PM',style: TextStyle(fontSize: 14),),
                                ),
                              ),),
                              Text('00',style: TextStyle(fontSize: 15,color: Colors.red,),)
                            ],
                          ),

                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),

            //3rd Container
            SizedBox(height: 8,),
            Container(
              height: 270,
              width: MediaQuery.of(context).size.width*0.99,
              color: Color(0xfffefefe),
              child: Column(
                children: [
                  SizedBox(height: 10,),
                  Row(
                    children: [
                      Text('   Route 12-gurugram Road-Haryana Road',style: TextStyle(fontSize: 15,color: Colors.grey),),
                      SizedBox(width: 50,),
                      Image.asset('assets/map2.png',height: 20,)
                    ],
                  ),
                  SizedBox(height: 20,),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: Column(
                          children: [
                            Image.asset('assets/circle.png',height: 20,),
                            Text('|',style: TextStyle(fontSize: 35),),
                            Image.asset('assets/mapicon1.png',height: 25,)
                          ],
                        ),
                      ),
                      Column(
                        children: [
                          Row(
                            children: [
                              Text('Sector-11 Metro Station \n (gate No.2)Gurugram',style: TextStyle(fontSize: 16),),
                              SizedBox(width: 35,),
                              Image.asset('assets/bus5.png',height: 20,),
                              SizedBox(width: 10,),
                              Text('Distance \n  12.08 km',style: TextStyle(fontSize: 13),)
                            ],
                          ),
                          Divider(thickness: 2,color: Colors.black,),
                          Row(
                            children: [
                              Text('Haryana Vihar East Metro \n Station',style: TextStyle(fontSize: 16),),
                              SizedBox(width: 25,),
                              Image.asset('assets/bus5.png',height: 20,),
                              SizedBox(width: 10,),
                              Text('Distance \n  6.18 km',style: TextStyle(fontSize: 13),)
                            ],
                          )
                        ],
                      )
                    ],
                  ),
                  SizedBox(height: 30,),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(30, 0, 0, 0),
                    child: Container(
                      height:60,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: [
                          Column(
                            children: [
                      Card(
                      elevation:20,
                        child:
                              Container(
                                height: 30,
                                width: 80,
                                color: Color(0xffFFEBCD),
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text('04:45 PM',style: TextStyle(fontSize: 14),),
                                ),
                              ),),
                              Text('35',style: TextStyle(fontSize: 15,color: Colors.green,),)
                       ],
                          ),
                          SizedBox(width: 40,),
                          Column(
                            children: [
                              Card(
                                elevation:20,
                                child:
                              Container(
                                height: 30,
                                width: 80,
                                color: Color(0xffFFEBCD),
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text('06:15 PM',style: TextStyle(fontSize: 14),),
                                ),
                              ),),
                              Text('45',style: TextStyle(fontSize: 15,color: Colors.red,),)
                            ],
                          ),
                          SizedBox(width: 40,),
                          Column(
                            children: [
                              Card(
                                elevation:20,
                                child:
                              Container(
                                height: 30,
                                width: 80,
                                color: Color(0xffFFEBCD),
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text('08:55 PM',style: TextStyle(fontSize: 14),),
                                ),
                              ),),
                              Text('00',style: TextStyle(fontSize: 15,color: Colors.red,),)
                            ],
                          ),
                          SizedBox(width: 40,),
                          Column(
                            children: [
                              Card(
                                elevation:20,
                                child:
                              Container(
                                height: 30,
                                width: 80,
                                color: Color(0xffFFEBCD),
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text('09:25 PM',style: TextStyle(fontSize: 14),),
                                ),
                              ),),
                              Text('35',style: TextStyle(fontSize: 15,color: Colors.green,),)
                            ],
                          ),


                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
            //4th container
            SizedBox(height: 8,),
            Container(
              height: 260,
              width: MediaQuery.of(context).size.width*0.99,
              color: Colors.white,
              child: Column(
                children: [
                  SizedBox(height: 10,),
                  Row(
                    children: [
                      Text('   Route 24-Delhi Road-New Delhi Vihar',style: TextStyle(fontSize: 15,color: Colors.grey),),
                      SizedBox(width: 50,),
                      Image.asset('assets/map2.png',height: 25,)
                    ],
                  ),
                  SizedBox(height: 20,),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: Column(
                          children: [
                            Image.asset('assets/circle.png',height: 20,),
                            Text('|',style: TextStyle(fontSize: 35),),
                            Image.asset('assets/mapicon1.png',height: 25,)
                          ],
                        ),
                      ),
                      Column(
                        children: [
                          Row(
                            children: [
                              Text('Sector-21 Metro Station \n (gate No.2)Dwarka',style: TextStyle(fontSize: 16),),
                              SizedBox(width: 35,),
                              Image.asset('assets/bus5.png',height: 20,),
                              SizedBox(width: 10,),
                              Text('Distance \n  7.68 km',style: TextStyle(fontSize: 13),)
                            ],
                          ),
                          Divider(thickness: 2,color: Colors.black,),
                          Row(
                            children: [
                              Text('New Delhi  Vihar  Metro \n Station',style: TextStyle(fontSize: 16),),
                              SizedBox(width: 25,),
                              Image.asset('assets/bus5.png',height: 20,),
                              SizedBox(width: 10,),
                              Text('Distance \n  23.08 km',style: TextStyle(fontSize: 13),)
                            ],
                          )
                        ],
                      )
                    ],
                  ),
                  SizedBox(height: 30,),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(30, 0, 0, 0),
                    child: Container(
                      height: 60,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: [
                          Column(
                            children: [
                      Card(
                      elevation:20,
                        child:
                              Container(
                                height: 30,
                                width: 80,
                                color: Color(0xffFFEBCD),
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text('05:45 PM',style: TextStyle(fontSize: 14),),
                                ),
                              ),),
                              Text('00',style: TextStyle(fontSize: 15,color: Colors.red,),)
                            ],
                          ),
                          SizedBox(width: 40,),
                          Column(
                            children: [
                              Card(
                                elevation:20,
                                child:
                              Container(
                                height: 30,
                                width: 80,
                                color: Color(0xffFFEBCD),
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text('06:05 PM',style: TextStyle(fontSize: 14),),
                                ),
                              ),),
                              Text('00',style: TextStyle(fontSize: 15,color: Colors.red,),)
                            ],
                          ),
                          SizedBox(width: 40,),
                          Column(
                            children: [
                              Card(
                                elevation:20,
                                child:
                              Container(
                                height: 30,
                                width: 80,
                                color: Color(0xffFFEBCD),
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text('07:30 PM',style: TextStyle(fontSize: 14),),
                                ),
                              ),),
                              Text('00',style: TextStyle(fontSize: 15,color: Colors.red,),)
                            ],
                          ),
                          SizedBox(width: 40,),
                          Column(
                            children: [
                              Card(
                                elevation:20,
                                child:
                              Container(
                                height: 30,
                                width: 80,
                                color: Color(0xffFFEBCD),
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text('08:15 PM',style: TextStyle(fontSize: 14),),
                                ),
                              ),),
                              Text('00',style: TextStyle(fontSize: 15,color: Colors.red,),)
                            ],
                          ),

                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),

          ],
        ),
      ),
    );
  }
}
