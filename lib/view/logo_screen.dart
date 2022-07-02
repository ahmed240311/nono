import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
// import 'package:nono/view/second%20logo.dart';
import 'package:nono/viewmodel/controller%20view.dart';
import 'package:page_transition/page_transition.dart';

import '../constant.dart';
import 'checkCars or building.dart';
class LogoScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomLeft,
                colors: [
                  // Color(0xffD17309),
                  Colors.black45,
                  Color(0xff3C91A8),
                  Color(0xff3C91A8),
                  Color(0xff19A2F7),
                  // color,
                ],
              )
            // color: colorLogin.withOpacity(.76),
          ),
        height: MediaQuery.of(context).size.height*1.6,
        child: Column(

          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(left: 18.0,top: 200.0),
              child: Container(
                width: MediaQuery.of(context).size.width/1.4,
                height: MediaQuery.of(context).size.height / 2.3,
                child:
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      width: MediaQuery.of(context).size.width/5.7,
                      height:MediaQuery.of(context).size.height/4.7,
                  // decoration: BoxDecoration(
                  //     gradient: LinearGradient(
                  //       begin: Alignment.topLeft,
                  //       end: Alignment.bottomLeft,
                  //       colors: [
                  //         Color(0xff3C91A8),
                  //         Color(0xff3C91A8),
                  //         // Color(0xff19A2F7),
                  //         // color,
                  //       ],
                  //     )
                  //   // color: colorLogin.withOpacity(.76),
                  // ),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 5.0,right: 10.5),
                        child: AnimatedSplashScreen(

                        // customTween: ,
                          duration: 2140,
                          splashTransition: SplashTransition.fadeTransition,
                          pageTransitionType: PageTransitionType.leftToRight,
                          backgroundColor: Color(0xff3C91A8),
                          nextScreen: CheckCarsOrBuilding(),
                          splash:Icon(Icons.home,color: Colors.white,size: 48.0,),
                        ),
                      ),
                    ),
                    Expanded(
                      child: WavyAnimatedTextKit(
                          onTap: () {
                            print("Tap Event");
                          },
                          text: [
                            "AL Nono",
                          ],
                          textStyle: TextStyle(
                              fontSize: 38.0,
                              // ScreenUtil.instance.setSp(35.0),
                              fontWeight: FontWeight.w900,
                              fontStyle: FontStyle.italic,
                              color: Colors.white,
                              fontFamily: "Horizon"),
                          // textAlign: TextAlign.start,
                          // alignment: AlignmentDirectional.topStart
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 70.0
                  // top: ScreenUtil.instance.setWidth(160.0)
                  ),
              child: SpinKitThreeBounce(color: Colors.white70),
            )
          ],
        ),
      ),
    );
  }
}
