import 'package:flutter/material.dart';
import 'package:nono/model/SolidIndicator.dart';
import 'package:nono/model/customtext.dart';
import 'package:nono/view/pricerange.dart';
import 'package:get/get.dart';
import 'package:nono/viewmodel/getxcontroller.dart';

import 'area range.dart';
import 'kind of building.dart';
import 'list of times rented.dart';
class BuyBuilding extends GetWidget<Auth> {

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height / 29.6,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 13.0),
            child: Container(
              height: MediaQuery.of(context).size.height / 20.5,
              // color: Colors.black12.withOpacity(.1),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  CustomText(
                    text: 'موقع العقار',
                    color: Colors.black38,
                    fontSize: 21.0,
                    alignment: Alignment.centerRight,
                  ),
                  Icon(
                    Icons.location_on,
                    color: Colors.black38,
                    size: 20.0,
                  ),
                ],
              ),
              decoration: BoxDecoration(
                // border: Border.all(color: Colors.white38),
                  color: Colors.grey.withOpacity(.16),
                  borderRadius: BorderRadius.all(Radius.circular(5))),
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height / 39.5,
          ),
          Divider(
            color: Colors.black12,
            thickness: 1.0,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 7.0,vertical: 4.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                CustomText(
                  text: 'نوع العقار',
                  color: Colors.black,
                  alignment: Alignment.topRight,
                  fontSize: 22.5,
                ),
                Icon(
                  Icons.home,
                  color: Colors.blue,
                  size: 20.0,
                ),
              ],
            ),
          ),
          // نوع العقار
          Container(
              height: MediaQuery.of(context).size.height/3.85,
              child: KindofBuilding()
          ),
// نطاق السعر
          Container(
              height: MediaQuery.of(context).size.height/7.2,
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 6.0,left: 6.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        CustomText(
                          text: 'نطاق السعر',
                          color: Colors.black,
                          alignment: Alignment.topRight,
                          fontSize: 22.0,
                        ),
                        SizedBox(
                          width: 10.0,
                        ),
                        Icon(
                          Icons.price_change_outlined,
                          color: Colors.blue,
                          size: 20.0,
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: MediaQuery.of(context).size.height/12.5,
                    child:  priceRange(),
                  ),
                ],
              )
          ),
          Divider(
            color: Colors.black12,
            thickness: 1.0,
          ),
          // نطاق المساحة
          Container(
              height: MediaQuery.of(context).size.height/7.2,
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 6.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        CustomText(
                          text: '  (متر مربع)  ',
                          color: Colors.black,
                          alignment: Alignment.topRight,
                          fontSize: 12.0,
                        ),
                        CustomText(
                          text: 'نطاق المساحة',
                          color: Colors.black,
                          alignment: Alignment.topRight,
                          fontSize: 22.0,
                        ),

                        SizedBox(
                          width: 10.0,
                        ),
                        Icon(
                          Icons.apps_rounded,
                          color: Colors.blue,
                          size: 20.0,
                        ),

                      ],
                    ),
                  ),
                  Container(
                    height: MediaQuery.of(context).size.height/12.5,
                    child:  AreaRange(),
                  ),
                ],
              )
          ),
          Divider(
            color: Colors.black12,
            thickness: 1.0,
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height/25.5,
          ),
          GestureDetector(

            child: Container(
              width: MediaQuery.of(context).size.width / 1.1,
              height: MediaQuery.of(context).size.height / 17.0,
              // color: color,
              decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.all(Radius.circular(7))),
              child: CustomText(
                text:"btnSearch".tr,
                color: Colors.white,
                alignment: Alignment.center,
                fontSize: 22.5,
              ),
            ),
            onTap: () {

            },
          ),
          SizedBox(
            height: 15.0,
          ),
        ],
      ),
    );
  }
}
