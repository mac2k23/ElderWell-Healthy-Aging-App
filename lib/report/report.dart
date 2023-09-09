import 'package:elderwell/diet/categories.dart';
import 'package:elderwell/signup/login.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:percent_indicator/percent_indicator.dart';

class Report extends StatefulWidget {
  const Report({super.key});

  @override
  State<Report> createState() => _ReportState();
}

class _ReportState extends State<Report> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        titleSpacing: 85,
        backgroundColor: Colors.white,
        leading: IconButton(
          onPressed: (){
            Get.to(const Login());
          },
          icon: const Icon(Icons.arrow_back_rounded,color: Colors.black,),
        ),
        title: const Text(
          'Daily Intake',
          style: TextStyle(
            letterSpacing: 1,
            color: Colors.black,
            fontSize: 20,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
      backgroundColor: const Color(0xffe1e1e1),
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
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Padding(
                  padding: const EdgeInsets.all(15),
                  child: Container(
                    alignment: Alignment.centerLeft,
                    child: const Text(
                      'Nutrition Intake',
                      style: TextStyle(
                        letterSpacing: 1,
                        color: Colors.black,
                        fontSize: 20,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    color: const Color(0xffffffff),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Column(
                    children: [
                      Container(
                        alignment: Alignment.centerLeft,
                        child: Column(
                          children: [
                            const Padding(
                              padding: EdgeInsets.all(20),
                              child: Text(
                                'Consumed today',
                                style: TextStyle(
                                  color: Colors.black45,
                                  fontSize: 20,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 20.0),
                              child: RichText(
                                text: const TextSpan(
                                  text: '530',
                                  style: TextStyle(
                                    color: Colors.green,
                                    fontSize: 27,
                                    fontWeight: FontWeight.w600,
                                    letterSpacing: 1,
                                  ),
                                  children: [
                                    TextSpan(
                                      text: '/2500 Cal',
                                      style: TextStyle(
                                          color: Colors.black45,
                                          fontSize: 27,
                                          fontWeight: FontWeight.w600,
                                        letterSpacing: 1,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(10),
                        child: LinearPercentIndicator(
                          width: 360,
                          animation: true,
                          lineHeight: 8,
                          percent: 0.3,
                          center: const Text(""),
                          progressColor: Colors.green,
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      alignment: Alignment.centerLeft,
                      decoration: BoxDecoration(
                        color: const Color(0xffffffff),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          children: [
                            CircularPercentIndicator(
                              radius: 35.0,
                              lineWidth: 5.0,
                              percent: 0.65,
                              center: const Text(""),
                              progressColor: Colors.lightBlueAccent,
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  const Text(
                                    'Calories',
                                    style: TextStyle(
                                      color: Colors.black45,
                                      fontSize: 20,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 5.0),
                                    child: RichText(
                                      text: const TextSpan(
                                        text: '856',
                                        style: TextStyle(
                                          color: Colors.lightBlueAccent,
                                          fontSize: 27,
                                          fontWeight: FontWeight.w600,
                                          letterSpacing: 1,
                                        ),
                                        children: [
                                          TextSpan(
                                            text: 'Cal',
                                            style: TextStyle(
                                              color: Colors.black45,
                                              fontSize: 20,
                                              fontWeight: FontWeight.w600,
                                              letterSpacing: 1,
                                            ),
                                          ),
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
                    ),
                    Container(
                      alignment: Alignment.centerLeft,
                      decoration: BoxDecoration(
                        color: const Color(0xffffffff),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          children: [
                            CircularPercentIndicator(
                              radius: 35.0,
                              lineWidth: 5.0,
                              percent: 0.90,
                              center: const Text(""),
                              progressColor: Colors.deepOrangeAccent,
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  const Text(
                                    'Protien',
                                    style: TextStyle(
                                      color: Colors.black45,
                                      fontSize: 20,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 5.0),
                                    child: RichText(
                                      text: const TextSpan(
                                        text: '128',
                                        style: TextStyle(
                                          color: Colors.deepOrangeAccent,
                                          fontSize: 27,
                                          fontWeight: FontWeight.w600,
                                          letterSpacing: 1,
                                        ),
                                        children: [
                                          TextSpan(
                                            text: 'Cal',
                                            style: TextStyle(
                                              color: Colors.black45,
                                              fontSize: 20,
                                              fontWeight: FontWeight.w600,
                                              letterSpacing: 1,
                                            ),
                                          ),
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
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      alignment: Alignment.centerLeft,
                      decoration: BoxDecoration(
                        color: const Color(0xffffffff),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          children: [
                            CircularPercentIndicator(
                              radius: 35.0,
                              lineWidth: 5.0,
                              percent: 0.40,
                              center: const Text(""),
                              progressColor: Colors.orangeAccent,
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  const Text(
                                    'Carbs',
                                    style: TextStyle(
                                      color: Colors.black45,
                                      fontSize: 20,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 5.0),
                                    child: RichText(
                                      text: const TextSpan(
                                        text: '173',
                                        style: TextStyle(
                                          color: Colors.orangeAccent,
                                          fontSize: 27,
                                          fontWeight: FontWeight.w600,
                                          letterSpacing: 1,
                                        ),
                                        children: [
                                          TextSpan(
                                            text: 'Cal',
                                            style: TextStyle(
                                              color: Colors.black45,
                                              fontSize: 20,
                                              fontWeight: FontWeight.w600,
                                              letterSpacing: 1,
                                            ),
                                          ),
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
                    ),
                    Container(
                      alignment: Alignment.centerLeft,
                      decoration: BoxDecoration(
                        color: const Color(0xffffffff),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          children: [
                            CircularPercentIndicator(
                              radius: 35.0,
                              lineWidth: 5.0,
                              percent: 0.70,
                              center: const Text(""),
                              progressColor: Colors.deepPurple,
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  const Text(
                                    'Calories',
                                    style: TextStyle(
                                      color: Colors.black45,
                                      fontSize: 20,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 5.0),
                                    child: RichText(
                                      text: const TextSpan(
                                        text: '199',
                                        style: TextStyle(
                                          color: Colors.deepPurple,
                                          fontSize: 27,
                                          fontWeight: FontWeight.w600,
                                          letterSpacing: 1,
                                        ),
                                        children: [
                                          TextSpan(
                                            text: 'cal',
                                            style: TextStyle(
                                              color: Colors.black45,
                                              fontSize: 20,
                                              fontWeight: FontWeight.w600,
                                              letterSpacing: 1,
                                            ),
                                          ),
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
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.deepPurple,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    )
                  ),
                    onPressed: (){
                    Get.to(const Categories());
                    },
                    child: const Padding(
                      padding: EdgeInsets.only(top: 20,bottom: 20),
                      child: Text(
                        '+Add Meals',
                        style: TextStyle(
                          fontSize: 17,
                        ),
                      ),
                    ),
                ),
                Padding(
                  padding: const EdgeInsets.all( 20.0),
                  child: Container(
                    alignment: Alignment.centerLeft,
                    child: const Text(
                      'Water Intake',
                      style: TextStyle(
                        letterSpacing: 1,
                        color: Colors.black,
                        fontSize: 20,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ),
                Container(
                  alignment: Alignment.centerLeft,
                  decoration: BoxDecoration(
                    color: const Color(0xffffffff),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const Text(
                                    '3 of 6 glasses consumed',
                                    style: TextStyle(
                                      color: Colors.black45,
                                      fontSize: 20,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                  RichText(
                                    text: const TextSpan(
                                      text: '2.6',
                                      style: TextStyle(
                                        color: Colors.lightBlueAccent,
                                        fontSize: 27,
                                        fontWeight: FontWeight.w600,
                                        letterSpacing: 1,
                                      ),
                                      children: [
                                        TextSpan(
                                          text: 'ML',
                                          style: TextStyle(
                                            color: Colors.black45,
                                            fontSize: 18,
                                            fontWeight: FontWeight.w600,
                                            letterSpacing: 1,
                                          ),
                                        ),
                                        TextSpan(
                                          text: ' / 5',
                                          style: TextStyle(
                                            color: Colors.black45,
                                            fontSize: 27,
                                            fontWeight: FontWeight.w600,
                                            letterSpacing: 1,
                                          ),
                                        ),
                                        TextSpan(
                                          text: 'ML',
                                          style: TextStyle(
                                            color: Colors.black45,
                                            fontSize: 18,
                                            fontWeight: FontWeight.w600,
                                            letterSpacing: 1,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            const Icon(Icons.wine_bar_rounded,color: Colors.lightBlueAccent,size: 50,),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              children: [
                                const Icon(Icons.wine_bar_rounded,color: Colors.lightBlueAccent,size: 50,),
                                RichText(
                                  text: const TextSpan(
                                    text: '500',
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 15,
                                      fontWeight: FontWeight.w600,
                                      letterSpacing: 1,
                                    ),
                                    children: [
                                      TextSpan(
                                        text: 'ML',
                                        style: TextStyle(
                                          color: Colors.black45,
                                          fontSize: 10,
                                          fontWeight: FontWeight.w600,
                                          letterSpacing: 1,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                            Column(
                              children: [
                                const Icon(Icons.wine_bar_rounded,color: Colors.lightBlueAccent,size: 50,),
                                RichText(
                                  text: const TextSpan(
                                    text: '1.5',
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 15,
                                      fontWeight: FontWeight.w600,
                                      letterSpacing: 1,
                                    ),
                                    children: [
                                      TextSpan(
                                        text: 'ML',
                                        style: TextStyle(
                                          color: Colors.black45,
                                          fontSize: 10,
                                          fontWeight: FontWeight.w600,
                                          letterSpacing: 1,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                            Column(
                              children: [
                                const Icon(Icons.wine_bar_rounded,color: Colors.lightBlueAccent,size: 50,),
                                RichText(
                                  text: const TextSpan(
                                    text: '600',
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 15,
                                      fontWeight: FontWeight.w600,
                                      letterSpacing: 1,
                                    ),
                                    children: [
                                      TextSpan(
                                        text: 'ML',
                                        style: TextStyle(
                                          color: Colors.black45,
                                          fontSize: 10,
                                          fontWeight: FontWeight.w600,
                                          letterSpacing: 1,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                            Column(
                              children: [
                                const Icon(Icons.wine_bar_rounded,color: Colors.lightBlueAccent,size: 50,),
                                RichText(
                                  text: const TextSpan(
                                    text: '500',
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 15,
                                      fontWeight: FontWeight.w600,
                                      letterSpacing: 1,
                                    ),
                                    children: [
                                      TextSpan(
                                        text: 'ML',
                                        style: TextStyle(
                                          color: Colors.black45,
                                          fontSize: 10,
                                          fontWeight: FontWeight.w600,
                                          letterSpacing: 1,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                            Column(
                              children: [
                                const Icon(Icons.wine_bar_rounded,color: Colors.lightBlueAccent,size: 50,),
                                RichText(
                                  text: const TextSpan(
                                    text: '500',
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 15,
                                      fontWeight: FontWeight.w600,
                                      letterSpacing: 1,
                                    ),
                                    children: [
                                      TextSpan(
                                        text: 'ML',
                                        style: TextStyle(
                                          color: Colors.black45,
                                          fontSize: 10,
                                          fontWeight: FontWeight.w600,
                                          letterSpacing: 1,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
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
                  alignment: Alignment.centerLeft,
                  decoration: BoxDecoration(
                    color: Colors.orangeAccent,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const Text(
                                    '3 of 6 glasses consumed',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 20,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                  RichText(
                                    text: const TextSpan(
                                      text: 'Ketogenic Diet',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 27,
                                        fontWeight: FontWeight.w600,
                                        letterSpacing: 1,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            const Icon(Icons.rice_bowl_rounded,color: Colors.white,size: 50,),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 20.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(10.0),
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        RichText(
                                          text: const TextSpan(
                                            text: '856',
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 27,
                                              fontWeight: FontWeight.w600,
                                              letterSpacing: 1,
                                            ),
                                            children: [
                                              TextSpan(
                                                text: 'Cal',
                                                style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 20,
                                                  fontWeight: FontWeight.w600,
                                                  letterSpacing: 1,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        const Text(
                                          'Calories Intake',
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 20,
                                            fontWeight: FontWeight.w500,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  LinearPercentIndicator(
                                    width: 150,
                                    animation: true,
                                    lineHeight: 8,
                                    percent: 0.3,
                                    center: const Text(""),
                                    progressColor: Colors.green,
                                  ),
                                ],
                              ),
                              Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(10.0),
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        RichText(
                                          text: const TextSpan(
                                            text: '2.5',
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 27,
                                              fontWeight: FontWeight.w600,
                                              letterSpacing: 1,
                                            ),
                                            children: [
                                              TextSpan(
                                                text: 'ML',
                                                style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 20,
                                                  fontWeight: FontWeight.w600,
                                                  letterSpacing: 1,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        const Text(
                                          'Water Intake',
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 20,
                                            fontWeight: FontWeight.w500,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  LinearPercentIndicator(
                                    width: 150,
                                    animation: true,
                                    lineHeight: 8,
                                    percent: 0.3,
                                    center: const Text(""),
                                    progressColor: Colors.green,
                                  ),
                                ],
                              ),
                            ],
                          ),
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
