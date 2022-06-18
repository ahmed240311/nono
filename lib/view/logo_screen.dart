import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:nono/viewmodel/controller%20view.dart';
import 'package:page_transition/page_transition.dart';

import '../constant.dart';
class LogoScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: color,
        height: MediaQuery.of(context).size.height*1.6,
        child: Column(

          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(left: 48.0,top: 200.0),
              child: Container(
                width: double.infinity,
                height: MediaQuery.of(context).size.height / 2.3,
                child:
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      width: MediaQuery.of(context).size.width/5.6,
                      height:MediaQuery.of(context).size.height/7.6,
                      child: Padding(
                        padding: const EdgeInsets.only(left: 10.0),
                        child: AnimatedSplashScreen(

                          duration: 2140,
                          splashTransition: SplashTransition.fadeTransition,
                          pageTransitionType: PageTransitionType.leftToRight,

                          backgroundColor: color,
                          nextScreen: cotrollerView(),
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
