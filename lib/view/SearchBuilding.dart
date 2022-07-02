import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nono/model/SolidIndicator.dart';
import 'package:nono/model/customtext.dart';
import 'package:nono/viewmodel/getxcontroller.dart';

import 'buy buildings.dart';
import 'rent building.dart';
import 'checkCars or building.dart';

class SearchBuilding extends GetWidget<Auth> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        initialIndex: 1,
        length: 2,


    child:  Scaffold(
        appBar: AppBar(

          centerTitle: true,
          title:
          TabBar(
            // indicatorColor: Colors.white30,
            indicatorSize: TabBarIndicatorSize.label,
            indicator: SolidIndicator(),

            unselectedLabelColor: Colors.black12.withOpacity(.3),
            labelColor: Colors.white30,
            tabs: <Widget>[
              Tab(
                icon: Container(
                  child: CustomText(
                    text: 'للإيجار',
                    alignment:Alignment.center,
                    color: Colors.white,
                    fontSize: 25.0,),
                  decoration: BoxDecoration(
                      // border: Border.all(color: Colors.white38),
                      // color: Colors.white.withOpacity(.3),
                      // borderRadius:
                      // BorderRadius.all(Radius.circular(5))
                  ),
                ),
              ),
              Container(
                child: Tab(

                  icon: CustomText(
                      text: '    للبيع   ',
                  alignment:Alignment.center,
                  color: Colors.white,
                  fontSize: 25.0,),
                ),
                decoration: BoxDecoration(
                    // border: Border.all(color: Colors.white38),
                    // color: Colors.white.withOpacity(.3),
                    // borderRadius:
                    // BorderRadius.all(Radius.circular(5))
                ),
              )
            ],
          ),
            actions: [
              GestureDetector(
                  child: Padding(
                    padding: const EdgeInsets.only(right: 6.0),
                    child: Icon(
                      Icons.cancel,
                      color: Colors.white,
                    ),
                  ),
                  onTap: () {
                    Get.offAll(() => CheckCarsOrBuilding());
                  }),
            ],
        ),
      // appBar: AppBar(
      //   shadowColor: Colors.white60,
      //   // centerTitle: true,
      //   // title: Padding(
      //   //   padding: const EdgeInsets.only(right: 35.0),
      //   //   child: CustomText(
      //   //     text: "Al Nono",
      //   //     alignment: Alignment.center,
      //   //     color: Colors.white,
      //   //     fontSize: 30.0,
      //   //   ),
      //   // ),
      //   flexibleSpace: Container(
      //     decoration: const BoxDecoration(
      //       gradient: LinearGradient(
      //           begin: Alignment.centerRight,
      //           end: Alignment.centerLeft,
      //           colors: <Color>[Colors.white30, Colors.blue]),
      //     ),
      //   ),
      //   elevation: 0.0,
      //   // backgroundColor:appbar
      //   actions: [
      //     GestureDetector(
      //         child: Padding(
      //           padding: const EdgeInsets.only(right: 6.0),
      //           child: Icon(
      //             Icons.cancel,
      //             color: Colors.white,
      //           ),
      //         ),
      //         onTap: () {
      //           Get.offAll(() => CheckCarsOrBuilding());
      //         }),
      //   ],
      //   leading:
      //   GestureDetector(
      //       onTap: () {
      //         // Navigator.of(context).pop();
      //         // Get.offAll(()=>CheckCarsOrBuilding());
      //       },
      //       child: Icon(
      //         Icons.cancel_outlined,
      //         color: Colors.white,
      //       )),
      // ),
      body:  TabBarView(
        children: <Widget>[
          //للإيجار
          RentingBuilding(),
          //للبيع
          BuyBuilding(),


        ],
      ),
    )
    );}
}
