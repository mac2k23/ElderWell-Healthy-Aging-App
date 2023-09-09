import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:elderwell/profile/5_hieght.dart';
import 'package:elderwell/profile/7_goals.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controller/common_controller.dart';

class Likes extends StatefulWidget {
  const Likes({super.key});

  @override
  State<Likes> createState() => _LikesState();
}

class _LikesState extends State<Likes> {
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
                    'What do you like?',
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
                          common.like[0].value=!common.like[0].value;
                        });
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          color: common.like[0].value==true?Colors.indigo:Color(0xffe1e1e1),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        width: 100,
                        height: 100,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                color: common.like[0].value==true?Colors.indigo:Color(0xffe1e1e1),
                                borderRadius: BorderRadius.circular(20),
                              ),
                              width: 50,
                              height: 50,
                              child: Image.asset(
                                  'assets/images/fish_icon.png',
                                color: common.like[0].value==true?Colors.white:Colors.black,
                              ),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              'Fish',
                              style: TextStyle(
                                color: common.like[0].value==true?Colors.white:Colors.black,
                                fontSize: 15,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: (){
                        setState(() {
                          common.like[1].value=!common.like[1].value;
                        });
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          color: common.like[1].value==true?Colors.indigo:Color(0xffe1e1e1),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        width: 100,
                        height: 100,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                color: common.like[1].value==true?Colors.indigo:Color(0xffe1e1e1),
                                borderRadius: BorderRadius.circular(20),
                              ),
                              width: 50,
                              height: 50,
                              child: Image.asset(
                                  'assets/images/snack_icon.png',
                                color: common.like[1].value==true?Colors.white:Colors.black,
                              ),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              'Snacks',
                              style: TextStyle(
                                color: common.like[1].value==true?Colors.white:Colors.black,
                                fontSize: 15,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: (){
                        setState(() {
                          common.like[2].value=!common.like[2].value;
                        });
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          color: common.like[2].value==true?Colors.indigo:Color(0xffe1e1e1),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        width: 100,
                        height: 100,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                color: common.like[2].value==true?Colors.indigo:Color(0xffe1e1e1),
                                borderRadius: BorderRadius.circular(20),
                              ),
                              width: 50,
                              height: 50,
                              child: Image.asset(
                                  'assets/images/eggs_icon.png',
                                color: common.like[2].value==true?Colors.white:Colors.black,
                              ),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              'Protien',
                              style: TextStyle(
                                color: common.like[2].value==true?Colors.white:Colors.black,
                                fontSize: 15,
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
                          common.like[3].value=!common.like[3].value;
                        });
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          color: common.like[3].value==true?Colors.indigo:Color(0xffe1e1e1),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        width: 100,
                        height: 100,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                color: common.like[3].value==true?Colors.indigo:Color(0xffe1e1e1),
                                borderRadius: BorderRadius.circular(20),
                              ),
                              width: 50,
                              height: 50,
                              child: Image.asset(
                                  'assets/images/dairy_icon.png',
                                color: common.like[3].value==true?Colors.white:Colors.black,
                              ),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              'Dairy',
                              style: TextStyle(
                                color: common.like[3].value==true?Colors.white:Colors.black,
                                fontSize: 15,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: (){
                        setState(() {
                          common.like[4].value=!common.like[4].value;
                        });
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          color: common.like[4].value==true?Colors.indigo:Color(0xffe1e1e1),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        width: 100,
                        height: 100,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                color: common.like[4].value==true?Colors.indigo:Color(0xffe1e1e1),
                                borderRadius: BorderRadius.circular(20),
                              ),
                              width: 50,
                              height: 50,
                              child: Image.asset(
                                  'assets/images/carrot_icon.png',
                                color: common.like[4].value==true?Colors.white:Colors.black,
                              ),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              'Vegetables',
                              style: TextStyle(
                                color: common.like[4].value==true?Colors.white:Colors.black,
                                fontSize: 15,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: (){
                        setState(() {
                          common.like[5].value=!common.like[5].value;
                        });
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          color: common.like[5].value==true?Colors.indigo:Color(0xffe1e1e1),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        width: 100,
                        height: 100,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                color: common.like[5].value==true?Colors.indigo:Color(0xffe1e1e1),
                                borderRadius: BorderRadius.circular(20),
                              ),
                              width: 50,
                              height: 50,
                              child: Image.asset(
                                  'assets/images/fruits_icon.png',
                                color: common.like[5].value==true?Colors.white:Colors.black,
                              ),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              'Fruits',
                              style: TextStyle(
                                color: common.like[5].value==true?Colors.white:Colors.black,
                                fontSize: 15,
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
                          common.like[6].value=!common.like[6].value;
                        });
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          color: common.like[6].value==true?Colors.indigo:Color(0xffe1e1e1),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        width: 100,
                        height: 100,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                color: common.like[6].value==true?Colors.indigo:Color(0xffe1e1e1),
                                borderRadius: BorderRadius.circular(20),
                              ),
                              width: 50,
                              height: 50,
                              child: Image.asset(
                                  'assets/images/vegetable_icon.png',
                                color: common.like[6].value==true?Colors.white:Colors.black,
                              ),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              'Organic',
                              style: TextStyle(
                                color: common.like[6].value==true?Colors.white:Colors.black,
                                fontSize: 15,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: (){
                        setState(() {
                          common.like[7].value=!common.like[7].value;
                        });
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          color: common.like[7].value==true?Colors.indigo:Color(0xffe1e1e1),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        width: 100,
                        height: 100,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                color: common.like[7].value==true?Colors.indigo:Color(0xffe1e1e1),
                                borderRadius: BorderRadius.circular(20),
                              ),
                              width: 50,
                              height: 50,
                              child: Image.asset(
                                  'assets/images/vegan_icon.png',
                                color: common.like[7].value==true?Colors.white:Colors.black,
                              ),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              'Vegan',
                              style: TextStyle(
                                color: common.like[7].value==true?Colors.white:Colors.black,
                                fontSize: 15,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: (){
                        setState(() {
                          common.like[8].value=!common.like[8].value;
                        });
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          color: common.like[8].value==true?Colors.indigo:Color(0xffe1e1e1),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        width: 100,
                        height: 100,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                color: common.like[8].value==true?Colors.indigo:Color(0xffe1e1e1),
                                borderRadius: BorderRadius.circular(20),
                              ),
                              width: 50,
                              height: 50,
                              child: Image.asset(
                                  'assets/images/meat_icon.png',
                                color: common.like[8].value==true?Colors.white:Colors.black,
                              ),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              'Meat',
                              style: TextStyle(
                                color: common.like[8].value==true?Colors.white:Colors.black,
                                fontSize: 15,
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
                          Get.to(Height());
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
                      Get.to(Goals());
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
