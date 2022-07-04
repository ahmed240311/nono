import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nono/model/customtext.dart';
import 'package:nono/model/usermodel.dart';
import 'package:nono/service/firestoreuser.dart';
import 'package:nono/viewmodel/getxcontroller.dart';

import '../checkCars or building.dart';
import '../list of mafrosha.dart';

class ResultHome extends GetWidget<Auth> {
  ListOfCatagory resultBack = new ListOfCatagory();

  // late List <ModelForListOfPage>valuesBack;
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
              // if (snapshot.hasError) print('Error = ${snapshot.error}');
              if (snapshot.connectionState == ConnectionState.waiting) {
                return Padding(
                  padding: EdgeInsets.symmetric(vertical: 300.0),
                  child: Center(
                    child: CircularProgressIndicator(),
                  ),
                );
              }
              if (snapshot.hasData) {
                List<ModelForListOfPage> valuesReturned = resultBack.result;
                return Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 8.0),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 30.0),
                        child: Container(
                          height: MediaQuery.of(context).size.height / 18.5,
                          child: MafroshaList(),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 10.0),
                      child: Container(
                        height: height * 1.0,
                        child: ListView.builder(
                          itemCount: valuesReturned.length,
                          itemBuilder: (context, index) {
                            return Container(
                              height: height / 4.6,
                              child: Card(
                                color: Colors.white.withOpacity(.8),
                                child: Row(
                                  children: [
                                    Container(
                                        width: width / 2.7,
                                        // height: 370.0,
                                        child: Image.asset(
                                          'images/ui.jpg',
                                        )),
                                    // Image.network("http://${valuesReturned[index].pics[0]}"),
                                    Padding(
                                      padding: const EdgeInsets.all(5.0),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          CustomText(
                                            text:
                                                '${valuesReturned[index].price} جنيه ',
                                            fontSize: 20.0,
                                            color: Colors.black87,
                                          ),
                                          CustomText(
                                            text: valuesReturned[index].ad_dasc,
                                            fontSize: 18.7,
                                            color: Colors.black54,
                                          ),
                                          CustomText(
                                            text: valuesReturned[index].type,
                                            fontSize: 18.7,
                                            color: Colors.black54,
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.symmetric(
                                                vertical: 3.0),
                                            child: Row(
                                              children: [
                                                CustomText(
                                                  text:
                                                      '${valuesReturned[index].rooms_num} غرف نوم ',
                                                  fontSize: 14.9,
                                                  color: Colors.black54,
                                                ),
                                                Padding(
                                                  padding: const EdgeInsets
                                                          .symmetric(
                                                      horizontal: 4.0),
                                                  child: CustomText(
                                                    text:
                                                        '${valuesReturned[index].bathrooms_num} حمامات ',
                                                    fontSize: 14.9,
                                                    color: Colors.black54,
                                                  ),
                                                ),
                                                CustomText(
                                                  text:
                                                      '${valuesReturned[index].area} متر مربع ',
                                                  fontSize: 14.9,
                                                  color: Colors.black54,
                                                ),
                                              ],
                                            ),
                                          ),
                                          Row(
                                            // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                            // crossAxisAlignment: CrossAxisAlignment.center,
                                            children: [
                                              Container(
                                                width: width / 5.0,
                                                height: height /19.4,
                                                color: Colors.blueGrey
                                                    .withOpacity(.6),
                                                child: Row(
                                                  mainAxisAlignment: MainAxisAlignment.spaceAround,

                                                children: [
                                                    Padding(
                                                      padding: const EdgeInsets.only(top:4.0),
                                                      child: CustomText(
                                                        text: 'الإيميل',
                                                        fontSize: 17.5,
                                                        color: Colors.white,
                                                      ),
                                                    ),
                                                    Icon(
                                                      Icons.email,
                                                      color: Colors
                                                          .blueAccent,
                                                      size: 21.0,
                                                    )
                                                  ],
                                                ),
                                              ),
                                              Padding(
                                                padding:
                                                    const EdgeInsets.symmetric(
                                                        horizontal: 8.0),
                                                child:
                                                Container(
                                                  width: width / 5.1,
                                                  height: height /19.4,
                                                  color: Colors.blueGrey
                                                      .withOpacity(.6),
                                                  child: Row(
                                                    mainAxisAlignment: MainAxisAlignment.spaceAround,

                                                    children: [
                                                      Padding(
                                                        padding: const EdgeInsets.only(top:4.0),
                                                        child: CustomText(
                                                          text: 'اتصال',
                                                          fontSize: 17.5,
                                                          color: Colors.white,
                                                        ),
                                                      ),
                                                      Icon(
                                                        Icons.phone,
                                                        color: Colors
                                                            .blueAccent,
                                                        size: 21.0,
                                                      )
                                                    ],
                                                  ),
                                                ),
                                              ),
                                              Container(
                                                width: width / 7.6,
                                                height: height /19.4,
                                                color: Colors.blueGrey
                                                    .withOpacity(.6),
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            );
                          },
                        ),
                      ),
                    ),
                  ],
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
