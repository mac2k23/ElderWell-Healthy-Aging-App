import 'package:elderwell/profile/1_get_started.dart';
import 'package:elderwell/profile/3_age.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controller/common_controller.dart';

class Gender extends StatefulWidget {
  const Gender({super.key});

  @override
  State<Gender> createState() => _GenderState();
}

class _GenderState extends State<Gender> {
  final Controller common = Get.put(Controller());
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
                    'How do you identify?',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 30,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
                Text(
                  'To give you better experince we need\n to know your gender',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.black45,
                    fontSize: 18,
                  ),
                ),
              ],
            ),
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 20.0,right: 20),
                  child: Row(
                    children: [
                      Container(
                        width: 370,
                        child: ElevatedButton(
                          onPressed: (){
                            setState(() {
                              common.gender.value='male';
                            });
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: common.gender.value=='male'?Colors.indigo:Colors.white,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20),
                            ),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(15.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Icon(
                                  Icons.male,
                                  color: common.gender.value=='male'?Colors.white:Colors.black,
                                  size: 50,
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Text(
                                  'Male',
                                  style: TextStyle(
                                    fontSize: 25,
                                    color: common.gender.value=='male'?Colors.white:Colors.black,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20.0,right: 20),
                  child: Row(
                    children: [
                      Container(
                        width: 370,
                        child: ElevatedButton(
                          onPressed: (){
                            setState(() {
                              common.gender.value='female';
                            });
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: common.gender.value=='female'?Colors.indigo:Colors.white,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20),
                            ),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(15.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Icon(
                                  Icons.female,
                                  color: common.gender.value=='female'?Colors.white:Colors.black,
                                  size: 50,
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Text(
                                  'Female',
                                  style: TextStyle(
                                    fontSize: 25,
                                    color: common.gender.value=='female'?Colors.white:Colors.black,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
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
                          Get.to(GetStarted());
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
                      Get.to(Age());
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
    );;
  }
}
