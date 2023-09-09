import 'package:elderwell/profile/2_gender.dart';
import 'package:elderwell/profile/4_weight.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:syncfusion_flutter_sliders/sliders.dart';
import '../controller/common_controller.dart';
import 'package:syncfusion_flutter_core/theme.dart';

class Age extends StatefulWidget {
  const Age({super.key});

  @override
  State<Age> createState() => _AgeState();
}

class _AgeState extends State<Age> {
  final Controller common = Get.find();
  double _currentValue = 40;
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
                    'What\'s your age?',
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
                Row(mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      '${_currentValue.toInt()}',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 50,
                      ),
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text(
                          'Years',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.black45,
                            fontSize: 20,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                SliderTheme(
                  data: SliderThemeData(
                    trackHeight: 8,
                  ),
                  child: Slider(
                      value: _currentValue,
                      min: 0,
                      max: 100,
                      divisions: 100,
                      activeColor: Colors.indigo,
                      inactiveColor: Colors.indigo[200],
                      onChanged: (value){
                        setState(() {
                          _currentValue = value.roundToDouble();
                        });
                      },
                  ),
                ),
                // Container(
                //   child: SfSliderTheme(
                //     data: SfSliderThemeData(
                //       overlayRadius: 30,
                //       thumbColor: Colors.white,
                //       thumbRadius: 25,
                //       activeTrackHeight: 10,
                //       inactiveTrackHeight: 10,
                //       activeTrackColor: Colors.indigo,
                //       inactiveTrackColor: Colors.indigo[200],
                //       tooltipBackgroundColor: Colors.indigo,
                //       tooltipTextStyle: TextStyle(
                //         fontSize: 20,
                //       ),
                //       activeLabelStyle: TextStyle(
                //           color: Colors.black,
                //           fontSize: 20,
                //       ),
                //       inactiveLabelStyle: TextStyle(
                //         color: Colors.black,
                //         fontSize: 20,
                //       ),
                //     ),
                //     child: SfSlider(
                //       min: 1,
                //       max: 100,
                //       thumbIcon: Icon(
                //           Icons.arrow_forward_ios,
                //           color: Colors.indigo,
                //           size: 30.0),
                //       value: common.age,
                //       showLabels: true,
                //       enableTooltip: true,
                //       onChanged: (dynamic newValue){
                //         setState(() {
                //           common.age = newValue;
                //         });
                //       },
                //     ),
                //   ),
                // ),
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
                          Get.to(Gender());
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
                      Get.to(Weight());
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
