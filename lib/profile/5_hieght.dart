import 'package:elderwell/controller/common_controller.dart';
import 'package:elderwell/profile/4_weight.dart';
import 'package:elderwell/profile/6_likes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:syncfusion_flutter_sliders/sliders.dart';

class Height extends StatefulWidget {
  const Height({super.key});

  @override
  State<Height> createState() => _HeightState();
}

class _HeightState extends State<Height> {
  final Controller common = Get.find();
  double _currentValue = 170;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 20.0),
                  child: Text(
                    'How tall are you?',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 30,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10.0),
                  child: Text(
                    'This is used to set up recommendations\n just for you.',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.black45,
                      fontSize: 18,
                    ),
                  ),
                ),
              ],
            ),
            Column(
              children: [
                Row(mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      '${_currentValue.toInt()}',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 50,
                      ),
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text(
                          'cm',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.black45,
                            fontSize: 20,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                Container(
                  height: 350,
                  child: SliderTheme(
                    data: SliderThemeData(
                      trackHeight: 8,
                    ),
                    child: RotatedBox(
                      quarterTurns: 3,
                      child: Slider(
                        value: _currentValue,
                        min: 0,
                        max: 300,
                        divisions: 300,
                        activeColor: Colors.indigo,
                        inactiveColor: Colors.indigo[200],
                        onChanged: (value){
                          setState(() {
                            _currentValue = value.roundToDouble();
                          });
                        },
                      ),
                    ),
                  ),
                ),
                // RichText(
                //   text: TextSpan(
                //     text: 'Height',
                //     style: TextStyle(
                //       color: Colors.black,
                //       fontSize: 30,
                //     ),
                //     children: [
                //       TextSpan(
                //         text: '/cm',
                //         style: TextStyle(
                //           color: Colors.black45,
                //           fontSize: 25,
                //         ),
                //       ),
                //     ],
                //   ),
                // ),
                // Row(
                //   mainAxisAlignment: MainAxisAlignment.center,
                //   children: [
                //     ElevatedButton(
                //       style: ElevatedButton.styleFrom(
                //         backgroundColor: Colors.indigo,
                //         shape: RoundedRectangleBorder(
                //           borderRadius: BorderRadius.circular(100),
                //         ),
                //       ),
                //       onPressed: (){
                //         setState(() {
                //           common.height--;
                //         });
                //       },
                //       child: const Padding(
                //         padding: EdgeInsets.only(top: 7.0,bottom: 7),
                //         child: Text(
                //           '-',
                //           style: TextStyle(
                //             fontSize: 40,
                //             color: Colors.white,
                //           ),
                //         ),
                //       ),
                //     ),
                //     Padding(
                //       padding: const EdgeInsets.all(15.0),
                //       child: Text(
                //         '${common.height}',
                //         textAlign: TextAlign.center,
                //         style: TextStyle(
                //           color: Colors.black,
                //           fontSize: 90,
                //         ),
                //       ),
                //     ),
                //     ElevatedButton(
                //       style: ElevatedButton.styleFrom(
                //         backgroundColor: Colors.indigo,
                //         shape: RoundedRectangleBorder(
                //           borderRadius: BorderRadius.circular(100),
                //         ),
                //       ),
                //       onPressed: (){
                //         setState(() {
                //           common.height++;
                //         });
                //       },
                //       child: const Padding(
                //         padding: EdgeInsets.only(top: 18.0,bottom: 18),
                //         child: Icon(
                //           Icons.add,
                //           color: Colors.white,
                //         ),
                //       ),
                //     ),
                //   ],
                // ),
              ],
            ),
            Container(
              height: 150,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30),
                  topRight: Radius.circular(30),
                ),
                color: Colors.indigo,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Row(
                    children: [
                      Icon(Icons.arrow_left,color: Colors.white,),
                      InkWell(
                        onTap: (){
                          Get.to(Weight());
                        },
                        child: Text(
                          'Previous',
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ],
                  ),
                  ElevatedButton(
                    onPressed: (){
                      Get.to(Likes());
                    },
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        )
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Row(
                        children: [
                          Text(
                            'Continue',
                            style: TextStyle(
                              color: Colors.black,
                            ),
                          ),
                          Icon(Icons.arrow_right_sharp,color: Colors.black,),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
