import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_sliders/sliders.dart';
import 'package:syncfusion_flutter_core/theme.dart';

class Test extends StatefulWidget {
  const Test({super.key});

  @override
  State<Test> createState() => _TestState();
}

class _TestState extends State<Test> {
  double _value = 5.0;
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        body: Center(
            child: SfSliderTheme(
              data: SfSliderThemeData(
                overlayRadius: 30,
                thumbColor: Colors.white,
                thumbRadius: 25,
                activeTrackHeight: 8,
                inactiveTrackHeight: 8,
                activeTrackColor: Colors.indigo,
                inactiveTrackColor: Colors.indigo[200],
              ),
              child: SfSlider(
                min: 1.0,
                max: 100.0,
                thumbIcon: Icon(
                    Icons.arrow_forward_ios,
                    color: Colors.indigo,
                    size: 30.0),
                value: _value,
                showLabels: true,
                enableTooltip: true,
                onChanged: (dynamic newValue){
                  setState(() {
                    _value = newValue;
                  });
                },
              ),
            ),
        ),
    );
  }
}
