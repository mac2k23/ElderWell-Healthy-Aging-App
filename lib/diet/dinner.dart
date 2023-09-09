import 'package:elderwell/diet/categories.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
// import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Dinner extends StatefulWidget {
  const Dinner({super.key});

  @override
  State<Dinner> createState() => _DinnerState();
}

class _DinnerState extends State<Dinner> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffe1e1e1),
      appBar: AppBar(
        titleSpacing: 85,
        backgroundColor: Colors.white,
        leading: IconButton(
          onPressed: (){
            Get.to(const Categories());
          },
          icon: const Icon(Icons.arrow_back_rounded,color: Colors.black,),
        ),
        title: const Text(
          'Dinner items',
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
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 15.0,bottom: 15),
                child: SizedBox(
                  height: 50,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: <Widget>[
                      // InkWell(
                      //   onTap: (){},
                      //   child: Container(
                      //     color: Colors.white,
                      //     child: const Center(
                      //       child: Padding(
                      //         padding: EdgeInsets.only(left: 25.0,right: 25),
                      //         child: Text(
                      //           'All',
                      //           style: TextStyle(
                      //             fontSize: 18, color: Colors.black,
                      //           ),
                      //         ),
                      //       ),
                      //     ),
                      //   ),
                      // ),
                      InkWell(
                        onTap: (){},
                        child: Container(
                          color: Colors.white,
                          child: const Center(
                            child: Padding(
                              padding: EdgeInsets.only(left: 25.0,right: 25),
                              child: Text(
                                'Chicken',
                                style: TextStyle(
                                  fontSize: 18, color: Colors.black,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      InkWell(
                        onTap: (){},
                        child: Container(
                          color: Colors.white,
                          child: const Center(
                            child: Padding(
                              padding: EdgeInsets.only(left: 25.0,right: 25),
                              child: Text(
                                'Fish',
                                style: TextStyle(
                                  fontSize: 18, color: Colors.black,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      InkWell(
                        onTap: (){},
                        child: Container(
                          color: Colors.white,
                          child: const Center(
                            child: Padding(
                              padding: EdgeInsets.only(left: 25.0,right: 25),
                              child: Text(
                                'Meat',
                                style: TextStyle(
                                  fontSize: 18, color: Colors.black,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      InkWell(
                        onTap: (){},
                        child: Container(
                          color: Colors.white,
                          child: const Center(
                            child: Padding(
                              padding: EdgeInsets.only(left: 25.0,right: 25),
                              child: Text(
                                'Pizza',
                                style: TextStyle(
                                  fontSize: 18, color: Colors.black,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      InkWell(
                        onTap: (){},
                        child: Container(
                          color: Colors.white,
                          child: const Center(
                            child: Padding(
                              padding: EdgeInsets.only(left: 25.0,right: 25),
                              child: Text(
                                'Burger',
                                style: TextStyle(
                                  fontSize: 18, color: Colors.black,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      InkWell(
                        onTap: (){},
                        child: Container(
                          color: Colors.white,
                          child: const Center(
                            child: Padding(
                              padding: EdgeInsets.only(left: 25.0,right: 25),
                              child: Text(
                                'Meat Balls',
                                style: TextStyle(
                                  fontSize: 18, color: Colors.black,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      InkWell(
                        onTap: (){},
                        child: Container(
                          color: Colors.white,
                          child: const Center(
                            child: Padding(
                              padding: EdgeInsets.only(left: 25.0,right: 25),
                              child: Text(
                                'Rice',
                                style: TextStyle(
                                  fontSize: 18, color: Colors.black,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                decoration: const BoxDecoration(
                  color: Colors.white,
                ),
                child: Padding(
                  padding: const EdgeInsets.only(left: 15.0, right: 15),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 25.0),
                        child: SizedBox(
                          height: 200,
                          child: ListView(
                            scrollDirection: Axis.horizontal,
                            children: [
                              InkWell(
                                onTap: (){},
                                child: Container(
                                  color: Colors.white,
                                  child: Image.asset('assets/images/breakfast.png'),
                                ),
                              ),
                              const SizedBox(
                                width: 50,
                              ),
                              InkWell(
                                onTap: (){},
                                child: Container(
                                  color: Colors.white,
                                  child: Image.asset('assets/images/salad.png'),
                                ),
                              ),
                              const SizedBox(
                                width: 50,
                              ),
                              InkWell(
                                onTap: (){},
                                child: Container(
                                  color: Colors.white,
                                  child: Image.asset('assets/images/soup.png'),
                                ),
                              ),
                              const SizedBox(
                                width: 50,
                              ),
                              InkWell(
                                onTap: (){},
                                child: Container(
                                  color: Colors.white,
                                  child: Image.asset('assets/images/fish.png'),
                                ),
                              ),
                              const SizedBox(
                                width: 50,
                              ),
                              InkWell(
                                onTap: (){},
                                child: Container(
                                  color: Colors.white,
                                  child: Image.asset('assets/images/meat.png'),
                                ),
                              ),
                              const SizedBox(
                                width: 50,
                              ),
                              InkWell(
                                onTap: (){},
                                child: Container(
                                  color: Colors.white,
                                  child: Image.asset('assets/images/snacks.png'),
                                ),
                              ),
                              const SizedBox(
                                width: 50,
                              ),
                              InkWell(
                                onTap: (){},
                                child: Container(
                                  color: Colors.white,
                                  child: Image.asset('assets/images/juices.png'),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      const Text(
                        'Spring Vegetables',
                        style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      const Center(
                        child: Text(
                          'We love the versatility of this simple entree--a hearty\n choice for breakfast,lunch,or dinner',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.white,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(100),
                              ),
                              side: const BorderSide(
                                width: 1,
                                color: Colors.black12,
                              ),
                            ),
                            onPressed: (){},
                            child: const Padding(
                              padding: EdgeInsets.only(top: 7.0,bottom: 7),
                              child: Text(
                                '-',
                                style: TextStyle(
                                  fontSize: 40,
                                  color: Colors.black,
                                ),
                              ),
                            ),
                          ),
                          const Padding(
                            padding: EdgeInsets.all(15.0),
                            child: Icon(
                              Icons.lunch_dining,color: Colors.indigo,size: 60,
                            ),
                          ),
                          ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.white,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(100),
                              ),
                              side: const BorderSide(
                                width: 1,
                                color: Colors.black12,
                              ),
                            ),
                            onPressed: (){},
                            child: const Padding(
                              padding: EdgeInsets.only(top: 18.0,bottom: 18),
                              child: Icon(
                                Icons.add,
                                color: Colors.black,
                              ),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              color: Colors.indigo,
                              borderRadius: BorderRadius.circular(20),
                            ),
                            width: 120,
                            height: 120,
                            child: const Center(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(
                                    Icons.watch_later_rounded,
                                    color: Colors.white,
                                    size: 40,
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Text(
                                    '10+15 Min',
                                    style: TextStyle(
                                      color: Colors.white,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Container(
                            decoration: BoxDecoration(
                              color: Colors.cyan,
                              borderRadius: BorderRadius.circular(20),
                            ),
                            width: 120,
                            height: 120,
                            child: const Center(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(
                                    Icons.leaderboard,
                                    color: Colors.white,
                                    size: 40,
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Text(
                                    'Medium Level',
                                    style: TextStyle(
                                      color: Colors.white,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Container(
                            decoration: BoxDecoration(
                              color: Colors.orange,
                              borderRadius: BorderRadius.circular(20),
                            ),
                            width: 120,
                            height: 120,
                            child: const Center(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(
                                    Icons.local_fire_department,
                                    color: Colors.white,
                                    size: 40,
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Text(
                                    '817 Cal',
                                    style: TextStyle(
                                      color: Colors.white,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            'Per Serving',
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w500,
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
