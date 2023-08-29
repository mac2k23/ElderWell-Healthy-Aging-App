import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Breakfast extends StatefulWidget {
  const Breakfast({super.key});

  @override
  State<Breakfast> createState() => _BreakfastState();
}

class _BreakfastState extends State<Breakfast> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffe1e1e1),
      appBar: AppBar(
        titleSpacing: 85,
        backgroundColor: Colors.white,
        leading: IconButton(
          onPressed: (){},
          icon: Icon(Icons.arrow_back_rounded,color: Colors.black,),
        ),
        title: Text(
          'Breakfast items',
          style: TextStyle(
            letterSpacing: 1,
            color: Colors.black,
            fontSize: 20,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 15.0,bottom: 15),
                child: Container(
                  height: 50,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: <Widget>[
                      InkWell(
                        onTap: (){},
                        child: Container(
                          color: Colors.white,
                          child: const Center(
                              child: Padding(
                                padding: EdgeInsets.only(left: 25.0,right: 25),
                                child: Text(
                                  'All',
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
                                'Salads',
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
                                'Soups',
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
                                'Snacks',
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
                                'Juices',
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
                decoration: BoxDecoration(
                  color: Colors.white,
                ),
                child: Padding(
                  padding: const EdgeInsets.only(left: 15.0, right: 15),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 25.0),
                        child: Container(
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
                              SizedBox(
                                width: 50,
                              ),
                              InkWell(
                                onTap: (){},
                                child: Container(
                                  color: Colors.white,
                                  child: Image.asset('assets/images/salad.png'),
                                ),
                              ),
                              SizedBox(
                                width: 50,
                              ),
                              InkWell(
                                onTap: (){},
                                child: Container(
                                  color: Colors.white,
                                  child: Image.asset('assets/images/soup.png'),
                                ),
                              ),
                              SizedBox(
                                width: 50,
                              ),
                              InkWell(
                                onTap: (){},
                                child: Container(
                                  color: Colors.white,
                                  child: Image.asset('assets/images/fish.png'),
                                ),
                              ),
                              SizedBox(
                                width: 50,
                              ),
                              InkWell(
                                onTap: (){},
                                child: Container(
                                  color: Colors.white,
                                  child: Image.asset('assets/images/meat.png'),
                                ),
                              ),
                              SizedBox(
                                width: 50,
                              ),
                              InkWell(
                                onTap: (){},
                                child: Container(
                                  color: Colors.white,
                                  child: Image.asset('assets/images/snacks.png'),
                                ),
                              ),
                              SizedBox(
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
                      Text(
                        'Spring Vegetables',
                        style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      Center(
                        child: Text(
                          'We love the versatility of this simple entree--a hearty choice for breakfast,lunch,or dinner',
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w500,
                          ),
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
    );
  }
}
