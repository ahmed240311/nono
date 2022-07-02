import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nono/model/customtext.dart';
import 'package:nono/service/firestoreuser.dart';
import 'package:nono/viewmodel/getxcontroller.dart';

import '../checkCars or building.dart';

class ResultHome extends GetWidget<Auth> {
  ListOfCatagory resultBack = new ListOfCatagory();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        shadowColor: Colors.white60,
        centerTitle: true,
        title: Padding(
          padding: const EdgeInsets.only(left: 55.0),
          child: CustomText(
            text: "Al Nono",
            alignment: Alignment.center,
            color: Colors.white,
            fontSize: 30.0,
          ),
        ),
        flexibleSpace: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.centerRight,
                end: Alignment.centerLeft,
                colors: <Color>[Colors.white12, Colors.blue]),
          ),
        ),
        elevation: 0.0,
        // backgroundColor:appbar
        leading: GestureDetector(
            onTap: () {
              Get.offAll(() => CheckCarsOrBuilding());
            },
            child: Icon(
              Icons.arrow_back,
              color: Colors.white,
            )),
      ),
      body: ListView(
        shrinkWrap: true,
        physics: NeverScrollableScrollPhysics(),
        children: [
          FutureBuilder(
            future: resultBack.ShowResult(),
            builder: (context, snapshot) {
              var height = MediaQuery.of(context).size.height;
              var width = MediaQuery.of(context).size.width;
              if (snapshot.hasError) print('Error = ${snapshot.error}');
              if (snapshot.connectionState == ConnectionState.waiting) {
                return Padding(
                  padding: EdgeInsets.symmetric(vertical: 300.0),
                  child: Center(
                    child: CircularProgressIndicator(),
                  ),
                );
              }
              if (snapshot.hasData) {
                return Container(
                  height: height / 1.9,
                  child: ListView.builder(
                    itemCount: 1,
                    itemBuilder: (context, index) {
                      return Card(
                        color: Colors.white.withOpacity(0.7),
                        child: Column(
                          children: [
                            CustomText(
                              text: resultBack.ListOfResult[index]['address'],
                              fontSize: 19.7,
                              color: Colors.black87,
                            )
                          ],
                        ),
                      );
                    },
                  ),
                );
              } else
                return Center(
                    child: Container(
                  height: height / 1.2,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset('images/offline.png'),
                      CustomText(
                        color: Colors.blueAccent,
                        fontSize: 20.0,
                        alignment: Alignment.center,
                        text: 'لا يوجد اتصال بالانترنت',
                      ),
                      SizedBox(height: height / 14),
                      CircularProgressIndicator(),
                    ],
                  ),
                ));
            },
          )
        ],
      ),
    );
  }
}
