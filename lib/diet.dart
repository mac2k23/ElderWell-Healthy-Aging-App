import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';

class Diet extends StatefulWidget {
  const Diet({super.key});

  @override
  State<Diet> createState() => _DietState();
}

class _DietState extends State<Diet> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        titleSpacing: 85,
        backgroundColor: Colors.white,
        leading: IconButton(
          onPressed: (){},
          icon: Icon(Icons.arrow_back_rounded,color: Colors.black,),
        ),
        title: Text(
          'Add Daily Diet',
          style: TextStyle(
            letterSpacing: 1,
            color: Colors.black,
            fontSize: 20,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
      backgroundColor: Color(0xffe1e1e1),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        selectedFontSize: 10,
        selectedIconTheme: IconThemeData(color: Colors.black),
        selectedItemColor: Colors.black,
        selectedLabelStyle: TextStyle(fontWeight: FontWeight.bold,
            color: Colors.black),
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home_outlined,color: Colors.black),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.apple,color: Colors.black),
            label: 'Diet',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.note_alt_outlined,color: Colors.black),
            label: 'Report',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_circle_outlined,color: Colors.black),
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
                  padding: const EdgeInsets.all(20),
                  child: Container(
                    alignment: Alignment.centerLeft,
                    child: Text(
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
                    color: Color(0xffffffff),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Column(
                    children: [
                      Container(
                        alignment: Alignment.centerLeft,
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(20),
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
                                text: TextSpan(
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
                        padding: EdgeInsets.all(10),
                        child: new LinearPercentIndicator(
                          width: 360,
                          animation: true,
                          lineHeight: 8,
                          percent: 0.3,
                          center: Text(""),
                          progressColor: Colors.green,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      alignment: Alignment.centerLeft,
                      decoration: BoxDecoration(
                        color: Color(0xffffffff),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          children: [
                            Container(
                              child: new CircularPercentIndicator(
                                radius: 35.0,
                                lineWidth: 5.0,
                                percent: 0.65,
                                center: new Text(""),
                                progressColor: Colors.lightBlueAccent,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Text(
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
                                      text: TextSpan(
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
                        color: Color(0xffffffff),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          children: [
                            Container(
                              child: new CircularPercentIndicator(
                                radius: 35.0,
                                lineWidth: 5.0,
                                percent: 0.90,
                                center: new Text(""),
                                progressColor: Colors.deepOrangeAccent,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Text(
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
                                      text: TextSpan(
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
                SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      alignment: Alignment.centerLeft,
                      decoration: BoxDecoration(
                        color: Color(0xffffffff),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          children: [
                            Container(
                              child: new CircularPercentIndicator(
                                radius: 35.0,
                                lineWidth: 5.0,
                                percent: 0.40,
                                center: new Text(""),
                                progressColor: Colors.orangeAccent,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Text(
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
                                      text: TextSpan(
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
                        color: Color(0xffffffff),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          children: [
                            Container(
                              child: new CircularPercentIndicator(
                                radius: 35.0,
                                lineWidth: 5.0,
                                percent: 0.70,
                                center: new Text(""),
                                progressColor: Colors.deepPurple,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Text(
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
                                      text: TextSpan(
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
                SizedBox(
                  height: 10,
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.deepPurple,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(13),
                    )
                  ),
                    onPressed: (){},
                    child: Padding(
                      padding: const EdgeInsets.only(left: 125.0,right: 125),
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
                    child: Text(
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
                    color: Color(0xffffffff),
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
                                  Text(
                                    '3 of 6 glasses consumed',
                                    style: TextStyle(
                                      color: Colors.black45,
                                      fontSize: 20,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                  RichText(
                                    text: TextSpan(
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
                            Icon(Icons.wine_bar_rounded,color: Colors.lightBlueAccent,size: 50,),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              children: [
                                Icon(Icons.wine_bar_rounded,color: Colors.lightBlueAccent,size: 50,),
                                RichText(
                                  text: TextSpan(
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
                                Icon(Icons.wine_bar_rounded,color: Colors.lightBlueAccent,size: 50,),
                                RichText(
                                  text: TextSpan(
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
                                Icon(Icons.wine_bar_rounded,color: Colors.lightBlueAccent,size: 50,),
                                RichText(
                                  text: TextSpan(
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
                                Icon(Icons.wine_bar_rounded,color: Colors.lightBlueAccent,size: 50,),
                                RichText(
                                  text: TextSpan(
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
                                Icon(Icons.wine_bar_rounded,color: Colors.lightBlueAccent,size: 50,),
                                RichText(
                                  text: TextSpan(
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
                SizedBox(
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
                                  Text(
                                    '3 of 6 glasses consumed',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 20,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                  RichText(
                                    text: TextSpan(
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
                            Icon(Icons.rice_bowl_rounded,color: Colors.white,size: 50,),
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
                                          text: TextSpan(
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
                                        Text(
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
                                  new LinearPercentIndicator(
                                    width: 150,
                                    animation: true,
                                    lineHeight: 8,
                                    percent: 0.3,
                                    center: Text(""),
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
                                          text: TextSpan(
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
                                        Text(
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
                                  new LinearPercentIndicator(
                                    width: 150,
                                    animation: true,
                                    lineHeight: 8,
                                    percent: 0.3,
                                    center: Text(""),
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
