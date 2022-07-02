import 'package:flutter/material.dart';
import 'package:flutter_xlider/flutter_xlider.dart';

class priceRange extends StatefulWidget {
  priceRange({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<priceRange> {
  var lowervalue;

  var uppervalue;

  var _price = GlobalKey<ScaffoldState>(debugLabel: 'price');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _price,
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Container(
                margin: EdgeInsets.only(left: 20, right: 20),
                alignment: Alignment.center,
                child: FlutterSlider(
                  key: Key('3343'),
                  values: [
                    lowervalue == null ? 1000 : lowervalue,
                    uppervalue == null ? 2000000 : uppervalue
                  ],
                  rangeSlider: true,

                  rtl: true,
//                   ignoreSteps: [
//                     FlutterSliderIgnoreSteps(from: 8000, to: 12000),
//                     FlutterSliderIgnoreSteps(from: 18000, to: 22000),
//                   ],
                  max: 5000000,
                  min: 500,
                  step: FlutterSliderStep(step: 1000),
                  jump: true,
                  trackBar: FlutterSliderTrackBar(
                    activeTrackBarHeight: 1.5,
                    activeTrackBar: BoxDecoration(color: Colors.blue),
                  ),
                  tooltip: FlutterSliderTooltip(
                    // disableAnimation: true,
                    alwaysShowTooltip: true,
                    textStyle:
                        TextStyle(fontSize: 15.5, color: Colors.lightBlue),
                  ),
                  handler: FlutterSliderHandler(
                    decoration: BoxDecoration(),
                    child: Container(
                      decoration: BoxDecoration(
                          color: Colors.blue,
                          borderRadius: BorderRadius.circular(25)),
                      padding: EdgeInsets.all(11),
                      child: Container(
                        padding: EdgeInsets.all(5),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(25)),
                      ),
                    ),
                  ),
                  rightHandler: FlutterSliderHandler(
                    decoration: BoxDecoration(),
                    child: Container(
                      decoration: BoxDecoration(
                          color: Colors.lightBlue,
                          borderRadius: BorderRadius.circular(25)),
                      padding: EdgeInsets.all(11),
                      child: Container(
                        padding: EdgeInsets.all(5),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(25)),
                      ),
                    ),
                  ),
                  disabled: false,

                  onDragging: (handlerIndex, lowerValue, upperValue) {
                    lowervalue = lowerValue;
                    uppervalue = upperValue;

                    setState(() {});
                  },
                )),
          ],
        ),
      ),
    );
  }
}
