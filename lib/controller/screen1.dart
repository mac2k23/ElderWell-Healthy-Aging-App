// import 'package:elderwell/controller/common_controller.dart';
// import 'package:elderwell/controller/screen2.dart';
// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
//
// class Screen1 extends StatefulWidget {
//   const Screen1({super.key});
//
//   @override
//   State<Screen1> createState() => _Screen1State();
// }
//
// class _Screen1State extends State<Screen1> {
//   final Controller common = Get.put(Controller());
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: SafeArea(
//         child: Container(
//           child: Column(
//             children: [
//               Text(
//                 '${common.count}',
//                 style: TextStyle(
//                   fontSize: 30,
//                 ),
//               ),
//               ElevatedButton(
//                   onPressed: (){
//                     Get.to(Screen2());
//                   },
//                   child: Text('Next Screen'),
//               ),
//               ElevatedButton(
//                 onPressed: (){
//                   setState(() {
//                     common.count++;
//                   });
//                 },
//                 child: Text('Add'),
//               ),
//             ],
//           ),
//         ),
//       ),
//     ) ;
//   }
// }
