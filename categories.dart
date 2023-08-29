import 'package:flutter/material.dart';

class Categories extends StatefulWidget {
  const Categories({super.key});

  @override
  State<Categories> createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Color(0xffe1e1e1),
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(
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
                            Text(
                              'Breakfast',
                              style: TextStyle(
                                fontSize:20,
                                fontWeight: FontWeight.w500
                              ),
                            ),
                            Text(
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
                              onPressed: (){},
                              child: Text('+ Add'),
                              
                            ),
                          ],
                        ),
                       Container(
                         height: 90,
                         child: Image.asset('assets/images/Breakfast-removebg-preview.png'),
                       ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
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
                        Container(
                          height: 90,
                          child: Image.asset('assets/images/lunch-removebg-preview.png'),
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Lunch',
                              style: TextStyle(
                                  fontSize:20,
                                  fontWeight: FontWeight.w500
                              ),
                            ),
                            Text(
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
                              onPressed: (){},
                              child: Text('+ Add'),

                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
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
                            Text(
                              'Snacks',
                              style: TextStyle(
                                  fontSize:20,
                                  fontWeight: FontWeight.w500
                              ),
                            ),
                            Text(
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
                              onPressed: (){},
                              child: Text('+ Add'),

                            ),
                          ],
                        ),
                        Container(
                          height: 90,
                          child: Image.asset('assets/images/snack-removebg-preview.png'),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.white,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(top: 15.0,bottom: 15,right: 15,left: 15),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          height: 90,
                          child: Image.asset('assets/images/dinner1.png'),
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Dinner',
                              style: TextStyle(
                                  fontSize:20,
                                  fontWeight: FontWeight.w500
                              ),
                            ),
                            Text(
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
                              onPressed: (){},
                              child: Text('+ Add'),

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
      ),
    );
  }
}

