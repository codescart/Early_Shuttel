// import 'package:flutter/material.dart';
// class Testing extends StatefulWidget {
//   const Testing({Key? key}) : super(key: key);
//
//   @override
//   State<Testing> createState() => _TestingState();
// }
//
// class _TestingState extends State<Testing> {
//   @override
//   Widget build(BuildContext context) {
//
//     final myList=[
//
//       {"id":"1",
//         "address":'   Route 12-gurugram Road-Haryana Road',
//         "source":"Sector-11 Metro Station \n (gate No.2)Gurugram",
//         "destination":'Haryana Vihar East Metro \n Station',
//          "distance": "0.8km"
//       },
//       {"id":"2",
//         "address":'   Route 12-Delhi Road-Haryana Road',
//         "source":"Sector-H Metro Station \n (gate No.2)Gurugram",
//         "destination":'Anand Vihar East Metro \n Station',
//          "distance": "0.8km"
//       },
//       {"id":"3",
//         "address":'   Sector 12-gurugram Road-Haryana Road',
//         "source":"Sector-11 Metro Station \n (gate No.2)Gurugram",
//         "destination":'Haryana Vihar East Metro \n Station',
//          "distance": "0.8km"
//       },
//       {"id":"3",
//         "address":'   Tedhi Puliya-gurugram Road-Haryana Road',
//         "source":"Sector-11 Metro Station \n (gate No.2)Gurugram",
//         "destination":'Haryana Vihar East Metro \n Station',
//          "distance": "0.8km"
//       },
//       {"id":"4",
//         "address":'   Gomti Nagar-gurugram Road-Haryana Road',
//         "source":"Sector-11 Metro Station \n (gate No.2)Gurugram",
//         "destination":'Haryana Vihar East Metro \n Station',
//          "distance": "0.8km"
//       },
//     ];
//     return Scaffold(
//       body: Container(
//         height: 270,
//         width: 350,
//         color: Colors.white,
//         child: Column(
//           children: [
//             SizedBox(height: 10,),
//             Row(
//               children: [
//                 Text(myList[index]["address"].toString(),style: TextStyle(fontSize: 15,color: Colors.grey),),
//                 SizedBox(width: 50,),
//                 Image.asset('assets/map2.png',height: 20,)
//               ],
//             ),
//             SizedBox(height: 20,),
//             Row(
//               children: [
//                 Padding(
//                   padding: const EdgeInsets.all(12.0),
//                   child: Column(
//                     children: [
//                       Image.asset('assets/circle.png',height: 20,),
//                       Text('|',style: TextStyle(fontSize: 35),),
//                       Image.asset('assets/mapicon1.png',height: 25,)
//                     ],
//                   ),
//                 ),
//                 Column(
//                   children: [
//                     Row(
//                       children: [
//                         Text('Sector-11 Metro Station \n (gate No.2)Gurugram',style: TextStyle(fontSize: 16),),
//                         SizedBox(width: 35,),
//                         Image.asset('assets/bus5.png',height: 20,),
//                         SizedBox(width: 10,),
//                         Text('Distance \n  12.08 km',style: TextStyle(fontSize: 13),)
//                       ],
//                     ),
//                     Divider(thickness: 2,color: Colors.black,),
//                     Row(
//                       children: [
//                         Text('Haryana Vihar East Metro \n Station',style: TextStyle(fontSize: 16),),
//                         SizedBox(width: 25,),
//                         Image.asset('assets/bus5.png',height: 20,),
//                         SizedBox(width: 10,),
//                         Text('Distance \n  6.18 km',style: TextStyle(fontSize: 13),)
//                       ],
//                     )
//                   ],
//                 )
//               ],
//             ),
//             SizedBox(height: 30,),
//             Padding(
//               padding: const EdgeInsets.fromLTRB(30, 0, 0, 0),
//               child: Container(
//                 height:50,
//                 child: ListView(
//                   scrollDirection: Axis.horizontal,
//                   children: [
//                     Column(
//                       children: [
//                         Card(
//                           elevation:20,
//                           child:
//                           Container(
//                             height: 30,
//                             width: 80,
//                             color: Color(0xffFFEBCD),
//                             child: Padding(
//                               padding: const EdgeInsets.all(8.0),
//                               child: Text('05:55 PM',style: TextStyle(fontSize: 14),),
//                             ),
//                           ),),
//                         Text('35',style: TextStyle(fontSize: 15,color: Colors.green,),)
//                       ],
//                     ),
//                     SizedBox(width: 40,),
//                     Column(
//                       children: [
//                         Container(
//                           height: 30,
//                           width: 80,
//                           color: Color(0xffFFEBCD),
//                           child: Padding(
//                             padding: const EdgeInsets.all(8.0),
//                             child: Text('05:55 PM',style: TextStyle(fontSize: 14),),
//                           ),
//                         ),
//                         Text('45',style: TextStyle(fontSize: 15,color: Colors.red,),)
//                       ],
//                     ),
//                     SizedBox(width: 40,),
//                     Column(
//                       children: [
//                         Container(
//                           height: 30,
//                           width: 80,
//                           color: Color(0xffFFEBCD),
//                           child: Padding(
//                             padding: const EdgeInsets.all(8.0),
//                             child: Text('05:55 PM',style: TextStyle(fontSize: 14),),
//                           ),
//                         ),
//                         Text('00',style: TextStyle(fontSize: 15,color: Colors.red,),)
//                       ],
//                     ),
//                     SizedBox(width: 40,),
//                     Column(
//                       children: [
//                         Container(
//                           height: 30,
//                           width: 80,
//                           color: Color(0xffFFEBCD),
//                           child: Padding(
//                             padding: const EdgeInsets.all(8.0),
//                             child: Text('05:55 PM',style: TextStyle(fontSize: 14),),
//                           ),
//                         ),
//                         Text('35',style: TextStyle(fontSize: 15,color: Colors.green,),)
//                       ],
//                     ),
//
//
//                   ],
//                 ),
//               ),
//             )
//           ],
//         ),
//       ),
//     );
//   }
// }
