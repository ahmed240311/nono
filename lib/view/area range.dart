import 'package:flutter/material.dart';
import 'package:flutter_xlider/flutter_xlider.dart';

class AreaRange extends StatefulWidget {
  AreaRange({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<AreaRange> {
  var lowervalueArea;

  var uppervalueArea;
  var _price = GlobalKey<ScaffoldState>(debugLabel: 'area');

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
                  key: Key('3344'),

                  values: [
                    lowervalueArea == null ? 100 : lowervalueArea,
                    uppervalueArea == null ? 1500 : uppervalueArea
                  ],
                  rangeSlider: true,

                  rtl: true,
//                   ignoreSteps: [
//                     FlutterSliderIgnoreSteps(from: 8000, to: 12000),
//                     FlutterSliderIgnoreSteps(from: 18000, to: 22000),
//                   ],
                  max: 2000,
                  min: 50,
                  step: FlutterSliderStep(step: 100),
                  jump: true,
                  trackBar: FlutterSliderTrackBar(
                    activeTrackBarHeight: 1.5,
                    activeTrackBar: BoxDecoration(color: Colors.blue),
                  ),
                  tooltip: FlutterSliderTooltip(
                    // disableAnimation: true,
                    alwaysShowTooltip: true,
                    textStyle: TextStyle(fontSize: 15.5, color: Colors.lightBlue),
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
                    lowervalueArea = lowerValue;
                    uppervalueArea = upperValue;

                    setState(() {});
                  },
                )),
          ],
        ),
      ),
    );
  }
}
