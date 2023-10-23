import 'package:flutter/material.dart';
class Safety_Zone extends StatefulWidget {
  const Safety_Zone({Key? key}) : super(key: key);

  @override
  State<Safety_Zone> createState() => _Safety_ZoneState();
}

class _Safety_ZoneState extends State<Safety_Zone> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor:Color(0xff13ccae),
    title: Text('Safety Zone',style: TextStyle(fontSize: 19),
    ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 15,),
            Text("Promise to keep you\nsafe",style: TextStyle(fontSize: 33,fontWeight: FontWeight.bold),),
            Padding(
              padding: const EdgeInsets.only(right: 33,top: 5),
              child: Text("These safety features ensure that your ride\nalways stay worry-free",style: TextStyle(color: Colors.black54),),
            ),
            Image.asset("assets/safety.png",height: 270,width: 290,),
            Divider(height: 15,color: Colors.black38,),
            InkWell(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    child: Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: Icon(Icons.person_add_alt_outlined,color: Color(0xff02abb2),size: 40,),
                    ),
                  ),
                  Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(right: 35,top: 5),
                        child: Text("Emergency Contacts",style: TextStyle(fontSize: 15),),
                      ),
                      SizedBox(height: 8,),
                      Padding(
                        padding: const EdgeInsets.only(left: 20),
                        child: Text("Alert your family member or close\nfriends in case of an emergency",style: TextStyle(color: Colors.grey,fontSize: 13),),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 10,right: 52),
                        child: Container(
                          height: 30,
                          width: 120,
                          color: Color(0xffd6d6d6),
                          child: Padding(
                            padding: const EdgeInsets.fromLTRB(15, 6, 0, 0),
                            child: Text("NOT ENABLED",style: TextStyle(color: Colors.white),),
                          ),
                        ),
                      ),

                    ],
                  )
                ],
              ),
            ),
            Divider(color: Colors.black38 ,),
            InkWell(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    child: Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: Icon(Icons.calendar_month_sharp,color: Color(0xff02abb2),size: 40,),
                    ),
                  ),
                  Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(right: 53,top: 5),
                        child: Text("Share Ride Details",style: TextStyle(fontSize: 15),),
                      ),
                      SizedBox(height: 8,),
                      Padding(
                        padding: const EdgeInsets.only(left: 20),
                        child: Text("Notify your closest, everytime you\ntake a Shuttl ride",style: TextStyle(color: Colors.grey,fontSize: 13),),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 10,right: 52),
                        child: Container(
                          height: 30,
                          width: 120,
                          color: Color(0xffd6d6d6),
                          child: Padding(
                            padding: const EdgeInsets.fromLTRB(15, 6, 0, 0),
                            child: Text("NOT ENABLED",style: TextStyle(color: Colors.white),),
                          ),
                        ),
                      )

                    ],
                  )
                ],
              ),
            ),
            Divider(color: Colors.black38 ,),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  child: Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Icon(Icons.add_home_work_outlined,color: Color(0xff02abb2),size: 40,),
                  ),
                ),
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 96,top: 5),
                      child: Text("Home Check",style: TextStyle(fontSize: 15),),
                    ),
                    SizedBox(height: 8,),
                    Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: Text("A check to make sure that you have\nsafely reached your home",style: TextStyle(color: Colors.grey,fontSize: 13),),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 10,right: 52),
                      child: Container(
                        height: 30,
                        width: 120,
                        color: Color(0xffd6d6d6),
                        child: Padding(
                          padding: const EdgeInsets.fromLTRB(15, 6, 0, 0),
                          child: Text("NOT ENABLED",style: TextStyle(color: Colors.white),),
                        ),
                      ),
                    ),
                    SizedBox(height: 13,)



                  ],
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
