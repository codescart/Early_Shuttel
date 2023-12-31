// import 'dart:async';
// import 'dart:typed_data';
// import 'dart:ui' as ui;
// import 'package:early_shuttel/homepage.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter/services.dart';
// import 'package:geocoding/geocoding.dart';
// import 'package:geolocator/geolocator.dart';
// import 'package:google_maps_flutter/google_maps_flutter.dart';
//
// class Map_page extends StatefulWidget {
//   const Map_page({Key? key}) : super(key: key);
//   @override
//   _Map_pageState createState() => _Map_pageState();
// }
// class _Map_pageState extends State<Map_page> {
//   String? _id;
//   String? _deviceId;
//   var lat="0.000";
//   var long="0.000";
//   var latt;
//   var longg;
//
//   String apiKey = "AIzaSyDr9ff8zc6svtdfuQWaZT0gILeRK1Assoc";
//   String radius = "30";
//
//   double latitude = 31.5111093;
//   double longitude = 74.279664;
//
//
//   Completer<GoogleMapController>  _controller = Completer();
//   String _draggedAddress = "";
//   CameraPosition? _cameraPosition;
//   late LatLng _defaultLatLng;
//   late LatLng _draggedLatlng;
//   _init() {
//     _defaultLatLng = const LatLng(41.40338, 2.17403);
//     _draggedLatlng = _defaultLatLng;
//     _cameraPosition = CameraPosition(
//         target: _defaultLatLng,
//         zoom: 200
//     );
//     _gotoUserCurrentPosition();
//   }
//   Uint8List? marketimages;
//   final List<Marker> _markers =[];
//   Future<Uint8List> getImages(String path, int width) async {
//     ByteData data = await rootBundle.load(path);
//     ui.Codec codec = await ui.instantiateImageCodec(
//         data.buffer.asUint8List(), targetHeight: width);
//     ui.FrameInfo fi = await codec.getNextFrame();
//     return (await fi.image.toByteData(format: ui.ImageByteFormat.png))!.buffer
//         .asUint8List();
//   }
//   @override
//   void initState() {
//     _init();
//     // initPlatformState();
//     super.initState();
//     // _draggedAddress.toString();
//   }
//   Future<Uint8List?>loadNetWorkImage(String path) async{
//     final completer = Completer<ImageInfo>();
//     var image = NetworkImage(path);
//     image.resolve(ImageConfiguration()).addListener(
//         ImageStreamListener((info,_) =>completer.complete(info))
//     );
//     final imageInfo = await completer.future;
//     final byteData = await imageInfo.image.toByteData(format: ui.ImageByteFormat.png);
//     return byteData!.buffer.asUint8List();
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         body: SingleChildScrollView(
//           child: Column(
//             children: [
//               Container(
//                 height: MediaQuery.of(context).size.height * 0.6,
//                 child: _buildBody(),
//               ),
//               Align(
//                 alignment: Alignment.bottomCenter,
//                 child: Container(
//                   padding: const EdgeInsets.symmetric(
//                     horizontal: 28,
//                     vertical: 25,
//                   ),
//                   child: Column(
//                     children: [
//                       Padding(
//                         padding: const EdgeInsets.fromLTRB(0, 0, 110, 0),
//                         child: Text('Confirm Home Address',style: TextStyle(fontSize:18,fontWeight: FontWeight.bold)),
//                       ),
//                       Padding(
//                         padding: const EdgeInsets.fromLTRB(0, 6, 222, 0),
//                         child: Text('Home Location',style: TextStyle(color: Colors.grey,fontSize: 11),),
//                       ),
//                       Row(
//                         children: [
//                           Padding(
//                             padding: const EdgeInsets.fromLTRB(0, 10, 0, 0),
//                             child: Icon(
//                               Icons.location_on,
//                               size: 20,
//                               color:Theme.of(context).primaryColor,
//                             ),
//                           ),
//                           SizedBox(width: 10,),
//                           Container(
//                             height: 50,
//                             width: 250,
//                             child: Flexible(
//                               child: Padding(
//                                 padding: const EdgeInsets.fromLTRB(0, 10, 0, 0),
//                                 child: Text(
//                                   _draggedAddress,
//                                   style: Theme.of(context)
//                                       .textTheme
//                                       .bodyText1!
//                                       .copyWith(
//                                       fontWeight: FontWeight.normal
//                                   ),
//                                   maxLines: 2,
//                                 ),
//                               ),
//                             ),
//                           ),
//                         ],
//                       ),
//                       // Note: Same code is applied for the TextFormField as well
//                       const TextField(
//                         decoration: InputDecoration(
//                             focusedBorder: UnderlineInputBorder(borderSide: BorderSide(color: Colors.grey)),
//                             enabledBorder: UnderlineInputBorder(
//
//                               borderSide: BorderSide(
//                                   width: 1, color: Colors.grey),
//                             ),
//                             hintText: ' Flat/House No. (eg. 204, Block C)',
//                             hintStyle: TextStyle(fontSize: 12)
//                         ),
//                       ),
//                       SizedBox(height: 40),
//                       ElevatedButton(
//                           onPressed: () {Navigator.push(context, MaterialPageRoute(builder: (context)=>const homepage()));},
//                           style: ElevatedButton.styleFrom(
//                               padding: const EdgeInsets.all(0),
//                               shape: RoundedRectangleBorder(
//                                   borderRadius: BorderRadius.circular(10))),
//                           child: Ink(
//                               decoration: BoxDecoration(
//                                   gradient: const LinearGradient(
//                                       colors: [Color(0xff34445e), Color(0xff00aeb8)]),
//                                   borderRadius: BorderRadius.circular(10)),
//                               child: Container(
//                                   width: 305,
//                                   height: 40,
//                                   alignment: Alignment.center,
//                                   child: const Text(
//                                     'Save and Continue',style: TextStyle(fontSize: 15,fontWeight:FontWeight.bold ),
//                                   ))))
//
//
//                     ],
//                   ),
//
//                 ),
//               ),
//             ],
//           ),
//         ));
//   }
//   Widget _buildBody() {
//     return Stack(
//         children : [
//           _getMap(),
//           _getCustomPin(),
//           _getCustomDrawer(),
//           _getLoctionButton()
//         ]
//     );
//   }
//   Widget _getMap() {
//     return GoogleMap(
//         myLocationEnabled: true,
//         zoomControlsEnabled: false,
//         zoomGesturesEnabled: true,
//         myLocationButtonEnabled: false,
//         markers: Set<Marker>.of(_markers),
//         initialCameraPosition: _cameraPosition!,
//         mapType: MapType.normal,
//         onCameraIdle: () {
//           _getAddress(_draggedLatlng);
//         },
//         onCameraMove: (cameraPosition) {
//           _draggedLatlng = cameraPosition.target;
//         },
//         onMapCreated: (GoogleMapController controller) {
//           if (!_controller.isCompleted) {
//             _controller.complete(controller);
//           }
//         }
//     );
//   }
//
//
//   Future _gotoUserCurrentPosition() async {
//
//     Position currentPosition = await _determineUserCurrentPosition();
//     _gotoSpecificPosition(
//         LatLng(currentPosition.latitude, currentPosition.longitude));
//     final Uint8List locationIcon = await getImages('assets/img.png', 50);
//     setState(() async {
//       lat = currentPosition.latitude.toString();
//       long = currentPosition.longitude.toString();
//       var lats = double.parse(lat);
//       var longs = double.parse(long);
//
//       _markers.add(
//           Marker(
//               markerId: MarkerId('0'),
//               icon: BitmapDescriptor.fromBytes(locationIcon),
//               position: LatLng(lats, longs),
//               infoWindow: InfoWindow(
//                 title: "my name",
//               )
//           )
//       );
//     });
//
//   }
//
//
//   Future _gotoSpecificPosition(LatLng position) async {
//     GoogleMapController mapController = await _controller.future;
//     mapController.animateCamera(
//         CameraUpdate.newCameraPosition(
//             CameraPosition(
//                 target: position,
//                 zoom: 20
//             )
//         )
//     );
//     await _getAddress(position);
//   }
//   Future _getAddress(LatLng position) async {
//     List<Placemark> placemarks = await placemarkFromCoordinates(
//         position.latitude, position.longitude);
//     Placemark address = placemarks[0];
//     String addresStr = "${address.street}, ${address.locality}, ${address
//         .administrativeArea}, ${address.country}";
//     setState(() {
//       latt = position.latitude;
//       longg = position.longitude;
//       _draggedAddress = addresStr;
//     });
//
//   }
//   Future _determineUserCurrentPosition() async {
//     LocationPermission locationPermission;
//     bool isLocationServiceEnabled = await Geolocator.isLocationServiceEnabled();
//     //check if user enable service for location permission
//     if (!isLocationServiceEnabled) {
//       print("user don't enable location permission");
//     }
//     locationPermission = await Geolocator.checkPermission();
//     if(locationPermission == LocationPermission.denied) {
//       locationPermission = await Geolocator.requestPermission();
//       if(locationPermission == LocationPermission.denied) {
//         print("user denied location permission");
//       }
//     }
//
//     if(locationPermission == LocationPermission.deniedForever) {
//       print("user denied permission forever");
//     }
//     return await Geolocator.getCurrentPosition(desiredAccuracy: LocationAccuracy.best);
//   }
//
//   Widget _getCustomPin() {
//     return Positioned(
//       top: MediaQuery.of(context).size.height*0.4,
//       left: MediaQuery.of(context).size.width*0.4,
//       child: InkWell(
//         onTap: () async {
//           showDialog(
//             context: context,
//             builder: (ctx) => AlertDialog(
//                 title: Icon(Icons.pin_drop,size: 50,color: Colors.green,),
//                 content: Container(
//                   // color: Colors.redAccent,
//                   height: 150,
//                   width: 400,
//                   child: Text(_draggedAddress,),
//                 )
//             ),
//           );
//
//         },
//         child: Container(
//           width: 50,
//           height: 50,
//           child: Icon(Icons.pin_drop_outlined,size: 50,color: Colors.blue,),
//         ),
//       ),
//     );
//   }
//   Widget _getCustomDrawer() {
//     return Positioned(
//       top: 60,
//       left: 20,
//       child: InkWell(
//         onTap: () {
//           Scaffold.of(context).openDrawer();
//         },
//         child: Container(
//           width: 45,
//           height: 45,
//           decoration: BoxDecoration(
//               color: Colors.white,
//               borderRadius: BorderRadius.circular(8),
//               boxShadow: [new BoxShadow(
//                 color: Colors.black38,
//                 blurRadius: 20.0,
//               ),]
//           ),
//           child: Icon(Icons.menu),
//         ),
//       ),
//     );
//   }
//   Widget _getLoctionButton() {
//     return Positioned(
//       bottom: 50,
//       right: 20,
//       child: InkWell(
//         onTap:  (){
//           _gotoUserCurrentPosition();
//         },
//         child: Container(
//           width: 45,
//           height: 45,
//           decoration: BoxDecoration(
//               color: Colors.white,
//               borderRadius: BorderRadius.circular(8),
//               boxShadow: [new BoxShadow(
//                 color: Colors.black38,
//                 blurRadius: 20.0,
//               ),]
//           ),
//           child: Icon(Icons.my_location),
//         ),
//       ),
//     );
//   }
// }