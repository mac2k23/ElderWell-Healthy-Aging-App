import 'package:elderwell/profile/6_likes.dart';
import 'package:elderwell/profile/8_congrajulations.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controller/common_controller.dart';

class Goals extends StatefulWidget {
  const Goals({super.key});

  @override
  State<Goals> createState() => _GoalsState();
}

class _GoalsState extends State<Goals> {
  final Controller common = Get.find();
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
                    'What\'s your goal?',
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
                    'This is used in getting & personalized\n results & plans for you.',
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
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    InkWell(
                      onTap: (){
                        setState(() {
                          common.goal[0].value=!common.goal[0].value;
                        });
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          color: common.goal[0].value==true?Colors.indigo:Color(0xffe1e1e1),
                          borderRadius: BorderRadius.circular(30),
                        ),
                        width: 160,
                        height: 160,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                color: common.goal[0].value==true?Colors.indigo:Color(0xffe1e1e1),
                                borderRadius: BorderRadius.circular(20),
                              ),
                              width: 70,
                              height: 70,
                              child: Image.asset(
                                  'assets/images/weight_icon.png',
                                color: common.goal[0].value==true?Colors.white:Colors.black,
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              'LOSE WEIGHT',
                              style: TextStyle(
                                color: common.goal[0].value==true?Colors.white:Colors.black,
                                fontSize: 20,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: (){
                        setState(() {
                          common.goal[1].value=!common.goal[1].value;
                        });
                        },
                      child: Container(
                        decoration: BoxDecoration(
                          color: common.goal[1].value==true?Colors.indigo:Color(0xffe1e1e1),
                          borderRadius: BorderRadius.circular(30),
                        ),
                        width: 160,
                        height: 160,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                color: common.goal[1].value==true?Colors.indigo:Color(0xffe1e1e1),
                                borderRadius: BorderRadius.circular(20),
                              ),
                              width: 75,
                              height: 75,
                              child: Image.asset(
                                'assets/images/body_icon.png',
                                color: common.goal[1].value==true?Colors.white:Colors.black,
                              ),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              'GET FITTER',
                              style: TextStyle(
                                color: common.goal[1].value==true?Colors.white:Colors.black,
                                fontSize: 20,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 25,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    InkWell(
                      onTap: (){
                        setState(() {
                          common.goal[2].value=!common.goal[2].value;
                        });
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          color: common.goal[2].value==true?Colors.indigo:Color(0xffe1e1e1),
                          borderRadius: BorderRadius.circular(30),
                        ),
                        width: 160,
                        height: 160,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                color: common.goal[2].value==true?Colors.indigo:Color(0xffe1e1e1),
                                borderRadius: BorderRadius.circular(20),
                              ),
                              width: 75,
                              height: 75,
                              child: Image.asset(
                                'assets/images/muscle_icon.png',
                                color: common.goal[2].value==true?Colors.white:Colors.black,
                              ),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              'GAIN MUSCLE',
                              style: TextStyle(
                                color: common.goal[2].value==true?Colors.white:Colors.black,
                                fontSize: 20,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
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
                          Get.to(Likes());
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
                      Get.to(Congrajulations());
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
