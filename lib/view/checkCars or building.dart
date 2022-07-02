import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nono/model/customtext.dart';
import 'package:nono/model/drawer.dart';
import 'package:nono/viewmodel/controller%20view.dart';
import 'package:nono/viewmodel/getxcontroller.dart';

import 'SearchBuilding.dart';
import 'logo name.dart';

class CheckCarsOrBuilding extends GetWidget<Auth> {
  var scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        key: scaffoldKey,
        endDrawer: SizedBox(
            width:MediaQuery.of(context).size.width/1.55,
            child: ForDrawer()
        ),
        body: Stack(
          children: [
            Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('images/login.jpg'), fit: BoxFit.cover),
              ),
            ),
            // Image.asset("images/login.jpg"),
            Container(
                decoration: BoxDecoration(
                    gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomLeft,
              colors: [
                Color(0xffD17309).withOpacity(.6),
                Colors.black38,
                Color(0xff3C91A8),
                Color(0xff3C91A8),
                Color(0xff19A2F7),
                // color,
              ],
            )
                    // color: colorLogin.withOpacity(.76),
                    )),
            LogoName(),
            Positioned(
              top: 340.0,
              left: 5.0,
              right: 5.0,
              child: Column(
                // crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  ListTile(
                    title: Center(
                      child: CustomText(
                        text: "searchBuilding".tr,
                        color: Colors.white,
                        alignment: Alignment.center,
                        fontSize: 20.5,
                      ),
                    ),
                    subtitle:
                    GestureDetector(

                      child: Container(
                        width: MediaQuery.of(context).size.width / 1,
                        height: MediaQuery.of(context).size.height / 17.0,
                        // color: color,
                        decoration: BoxDecoration(
                            color: Colors.orange,
                            borderRadius: BorderRadius.all(Radius.circular(10))),
                        child: CustomText(
                          text:   "btnSearch".tr,
                          color: Colors.white,
                          alignment: Alignment.center,
                          fontSize: 22.0,
                        ),
                      ),
                      onTap: () {
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(builder: (context) => SearchBuilding()),
                        );
                      },
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height / 14.5,
                  ),
                  ListTile(
                    title: CustomText(
                      text: "searchCars".tr,
                      color: Colors.white,
                      alignment: Alignment.center,
                      fontSize: 19.5,
                    ),
                    subtitle: GestureDetector(
                      child: Container(
                        width: MediaQuery.of(context).size.width / 1,
                        height: MediaQuery.of(context).size.height / 17.0,
                        // color: color,
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.white),
                            // color: Colors.white.withOpacity(.3),
                            borderRadius:
                                BorderRadius.all(Radius.circular(10))
                        ),
                        child: CustomText(
                          text:  "btnSearch".tr,
                          color: Colors.white,
                          alignment: Alignment.center,
                          fontSize: 22.0,
                        ),
                      ),
                      onTap: () {
                        // Navigator
                        // Get.offAll(()=>cotrollerView());

                      },
                    ),
                  ),
                ],
              ),
            ),

            Padding(
              padding: const EdgeInsets.only(top: 30.5, right: 7.0),
              child: Align(
                alignment: Alignment.topRight,
                child: IconButton(
                  icon: Icon(
                    Icons.menu_open_sharp,
                    color: Colors.white,
                    size: 29.0,
                  ),
                  onPressed: () {
                    scaffoldKey.currentState!.openEndDrawer();
                    // Get.offAll(ForDrawer());
                  },
                ),
              ),
            ),
          ],
        ));
  }
}
