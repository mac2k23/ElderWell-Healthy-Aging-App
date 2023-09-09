import 'package:elderwell/profile/2_gender.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class GetStarted extends StatefulWidget {
  const GetStarted({super.key});

  @override
  State<GetStarted> createState() => _GetStartedState();
}

class _GetStartedState extends State<GetStarted> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  width: 300,
                    height: 350,
                    child: Image.asset('assets/images/splashscreen.png'),
                ),
              ],
            ),
            RichText(
              textAlign: TextAlign.center,
              text: TextSpan(
                text: 'Elder Well',
                style: TextStyle(
                  fontSize: 60,
                  fontStyle: FontStyle.italic,
                  fontWeight: FontWeight.w600,
                  color: Colors.indigo,
                ),
                children: [
                  TextSpan(
                    text: '\nHealthy Aging App',
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.black45,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Text(
                  textAlign: TextAlign.center,
                  'Stay active with personalized fitness plans, nourish well-being through mindfulness, and stay connected socially, all in one user-friendly app.',
                style: TextStyle(
                  color: Colors.black45,
                  fontSize: 18,
                ),
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
                  InkWell(
                    onTap: (){},
                    child: Text(
                        'Do it later',
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ),
                  ElevatedButton(
                      onPressed: (){
                        Get.to(Gender());
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
                              'Get Started',
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
