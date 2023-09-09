import 'package:elderwell/diet/breakfast.dart';
import 'package:elderwell/report/report.dart';
import 'package:elderwell/diet/dinner.dart';
import 'package:elderwell/diet/lunch.dart';
import 'package:elderwell/diet/snacks.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Categories extends StatefulWidget {
  const Categories({super.key});

  @override
  State<Categories> createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        titleSpacing: 85,
        backgroundColor: Colors.white,
        leading: IconButton(
          onPressed: (){
            Get.to(const Report());
          },
          icon: const Icon(Icons.arrow_back_rounded,color: Colors.black,),
        ),
        title: const Text(
          'Add Meals',
          style: TextStyle(
            letterSpacing: 1,
            color: Colors.black,
            fontSize: 20,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        selectedFontSize: 10,
        selectedIconTheme: const IconThemeData(color: Colors.black),
        selectedItemColor: Colors.black,
        selectedLabelStyle: const TextStyle(fontWeight: FontWeight.bold,
            color: Colors.black),
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home,color: Colors.black),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.apple,color: Colors.black),
            label: 'Diet',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.note_alt,color: Colors.black),
            label: 'Report',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_circle,color: Colors.black),
            label: 'Profile',
          ),
        ],
      ),
      backgroundColor: const Color(0xffe1e1e1),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.white,
                ),
                child: Padding(
                  padding: const EdgeInsets.only(top: 15.0,bottom: 15,left: 15),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            'Breakfast',
                            style: TextStyle(
                                fontSize:20,
                                fontWeight: FontWeight.w500
                            ),
                          ),
                          const Text(
                            'Recommended 830-1170Cal',
                            style: TextStyle(
                              color:Colors.black45,
                              fontSize: 15,
                            ),
                          ),
                          ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.indigo,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10),
                                )
                            ),
                            onPressed: (){
                              Get.to(const Breakfast());
                            },
                            child: const Padding(
                              padding: EdgeInsets.only(left: 15.0,right: 15,top: 10,bottom: 10),
                              child: Text('+ Add'),
                            ),

                          ),
                        ],
                      ),
                      SizedBox(
                        height: 90,
                        child: Image.asset('assets/images/Breakfast-removebg-preview.png'),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.white,
                ),
                child: Padding(
                  padding: const EdgeInsets.only(top: 15.0,bottom: 15,right: 15),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        height: 90,
                        child: Image.asset('assets/images/lunch-removebg-preview.png'),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            'Lunch',
                            style: TextStyle(
                                fontSize:20,
                                fontWeight: FontWeight.w500
                            ),
                          ),
                          const Text(
                            'Recommended 830-1170Cal',
                            style: TextStyle(
                              color:Colors.black45,
                              fontSize: 15,
                            ),
                          ),
                          ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.indigo,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10),
                                )
                            ),
                            onPressed: (){
                              Get.to(const Lunch());
                            },
                            child: const Padding(
                              padding: EdgeInsets.only(
                                left: 15.0,right: 15,top: 10,bottom: 10,
                              ),
                              child: Text('+ Add'),
                            ),

                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.white,
                ),
                child: Padding(
                  padding: const EdgeInsets.only(top: 15.0,bottom: 15,left: 15),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            'Snacks',
                            style: TextStyle(
                                fontSize:20,
                                fontWeight: FontWeight.w500
                            ),
                          ),
                          const Text(
                            'Recommended 830-1170Cal',
                            style: TextStyle(
                              color:Colors.black45,
                              fontSize: 15,
                            ),
                          ),
                          ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.indigo,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10),
                                )
                            ),
                            onPressed: (){
                              Get.to(const Snacks());
                            },
                            child: const Padding(
                              padding: EdgeInsets.only(
                                left: 15.0,right: 15,top: 10,bottom: 10,
                              ),
                              child: Text('+ Add'),
                            ),

                          ),
                        ],
                      ),
                      SizedBox(
                        height: 90,
                        child: Image.asset('assets/images/snack-removebg-preview.png'),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.white,
                ),
                child: Padding(
                  padding: const EdgeInsets.only(
                    top: 15.0,bottom: 15,right: 15,left: 15,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        height: 90,
                        child: Image.asset('assets/images/dinner1.png'),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            'Dinner',
                            style: TextStyle(
                                fontSize:20,
                                fontWeight: FontWeight.w500
                            ),
                          ),
                          const Text(
                            'Recommended 830-1170Cal',
                            style: TextStyle(
                              color:Colors.black45,
                              fontSize: 15,
                            ),
                          ),
                          ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.indigo,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10),
                                )
                            ),
                            onPressed: (){
                              Get.to(const Dinner());
                            },
                            child: const Padding(
                              padding: EdgeInsets.only(
                                left: 15.0,right: 15,top: 10,bottom: 10,
                              ),
                              child: Text('+ Add'),
                            ),

                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}