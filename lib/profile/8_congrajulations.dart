import 'package:elderwell/signup/login.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:get/get.dart';

class Congrajulations extends StatefulWidget {
  const Congrajulations({super.key});

  @override
  State<Congrajulations> createState() => _CongrajulationsState();
}

class _CongrajulationsState extends State<Congrajulations> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 80.0),
              child: Container(
                width: 300,
                  height: 300,
                  child: Lottie.asset('assets/animations/Congrajulation.json'),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 70.0),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 20.0),
                    child: Text(
                      'Congrajulation',
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
                      'Your account has been successfully\n created. Enjoy your service.',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.black45,
                        fontSize: 18,
                      ),
                    ),
                  ),
                ],
              ),
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
                  ElevatedButton(
                    onPressed: (){
                      Get.to(Login());
                    },
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        )
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(top: 15.0,bottom: 15,right: 60,left: 60),
                      child: Row(
                        children: [
                          Text(
                            'Continue',
                            style: TextStyle(
                              fontSize: 18,
                              color: Colors.black,
                            ),
                          ),
                          Icon(Icons.arrow_right_sharp,
                            color: Colors.black,
                            size: 25,
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
    );
  }
}
