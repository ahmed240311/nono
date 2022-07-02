import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nono/view/checkCars%20or%20building.dart';
import 'package:nono/view/logo%20name.dart';
import 'package:nono/viewmodel/controller%20view.dart';
import 'package:nono/viewmodel/getxcontroller.dart';

class ForDrawer extends GetWidget<Auth> {
  String checkAr = "اللغة العربية";
  Auth auth = Auth();

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Padding(
        padding: const EdgeInsets.only(top: 30.0),
        child: Column(
          children: [
            Center(
                child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: LogoNameDrawer(),
            )),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 18.0),
              child: Padding(
                padding: const EdgeInsets.only(right: 8.0),
                child: Align(
                  alignment: Alignment.centerRight,
                  child: GestureDetector(
                    child: Text.rich(
                      TextSpan(
                        style: TextStyle(fontSize: 17.5, color: Colors.blue),
                        children: [
                          TextSpan(
                            text: "Home".tr,

                          ),
                          WidgetSpan(
                            child: Padding(
                              padding:
                                  const EdgeInsets.only(right: 17.0, left: 20.0),
                              child: Icon(
                                Icons.home_outlined,
                                color: Colors.blue,
                                size: 20.0,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    onTap: () {
                      // Navigator
                      Get.offAll(CheckCarsOrBuilding());
                    },
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 13.0),
              child: Padding(
                padding: const EdgeInsets.only(right: 5.0),
                child: Align(
                  alignment: Alignment.centerRight,
                  child: Text.rich(
                    TextSpan(
                      style: TextStyle(
                        fontSize: 17.5,
                      ),
                      children: [
                        TextSpan(
                          text: "favorBtn".tr,
                        ),
                        WidgetSpan(
                          child: Padding(
                            padding: const EdgeInsets.only(right: 20.0, left: 12.0),
                            child: Icon(
                              Icons.favorite_border_outlined,
                              // color: Colors.white,
                              size: 19.0,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 18.0),
              child: Padding(
                padding: const EdgeInsets.only(right: 5.0),
                child: Align(
                  alignment: Alignment.centerRight,
                  child: Text.rich(
                    TextSpan(
                      style: TextStyle(
                        fontSize: 17.5,
                      ),
                      children: [
                        TextSpan(
                          text: "savedSearch".tr,
                        ),
                        WidgetSpan(
                          child: Padding(
                            padding:
                                const EdgeInsets.only(right: 22.0, left: 14.0),
                            child: Icon(
                              Icons.star_border,
                              // color: Colors.white,
                              size: 19.0,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              width: double.infinity,
              height: MediaQuery.of(context).size.height / 20.4,
              child: Card(
                color: Colors.white10.withOpacity(.7),
                child: Text(''),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 17.0),
              child: Padding(
                padding: const EdgeInsets.only(right: 5.0),
                child: Align(
                  alignment: Alignment.centerRight,
                  child: GestureDetector(
                    child: Text.rich(
                      TextSpan(
                        style: TextStyle(
                          fontSize: 17.5,
                        ),
                        children: [
                          TextSpan(
                            text: "Add Property".tr,
                          ),
                          WidgetSpan(
                            child: Padding(
                              padding:
                                  const EdgeInsets.only(right: 25.0, left: 20.0),
                              child: Icon(
                                Icons.add_business_outlined,
                                // color: Colors.white,
                                size: 19.0,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    onTap: () {
                      // Navigator
                      Get.offAll(()=>cotrollerView());
                    },
                  ),
                ),
              ),
            ),
            SizedBox(
              width: double.infinity,
              height: MediaQuery.of(context).size.height / 20.4,
              child: Card(
                color: Colors.white10.withOpacity(.7),
                child: Text(''),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 17.0),
              child: Align(
                alignment: Alignment.centerRight,
                child:Obx(
                      () => ListTile(
                        title:  DropdownButton<String>(
                            value: controller.dropdownValueLang.value,
                            // icon: const Icon(
                            //   Icons.arrow_drop_down,
                            // ),
                            elevation: 4,
                            style: const TextStyle(color: Colors.black54),
                            // underline: Container(
                            //   height: 1.5,
                            //   color: Colors.green,
                            // ),
                            onChanged: (newValue) {
                              controller.setSelectedLanguage(newValue!);
                              // controller.dropdownValueLang=newValue;

                              if (controller.dropdownValueLang.value ==
                                  checkAr) {
                                Get.updateLocale(Locale("ar"));
                              } else
                                Get.updateLocale(Locale("en"));
                            },
                            items: <String>['English Language', 'اللغة العربية']
                                .map<DropdownMenuItem<String>>((String value) {
                              return DropdownMenuItem<String>(
                                value: value,
                                child: Text(
                                  value,
                                  // style: styleForValue(),
                                ),
                              );
                            }).toList(),
                          )
                        ,
                          trailing: Icon(
                            Icons.language_outlined,
                            // color: Colors.green,
                          ),
                      ),
                      ),
                      // TextSpan(
                      //   text: 'ENGLISH',
                      // ),
                      // WidgetSpan(
                      //   child: Padding(
                      //     padding:
                      //         const EdgeInsets.only(right: 20.0, left: 14.0),
                      //     child: Icon(
                      //       Icons.language_outlined,
                      //       // color: Colors.white,
                      //       size: 19.0,
                      //     ),
                      //   ),
                      // ),
                    // ],
                  // ),
                // ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 16.0),
              child: Padding(
                padding: const EdgeInsets.only(right: 8.0),
                child: Align(
                  alignment: Alignment.centerRight,
                  child: Text.rich(
                    TextSpan(
                      style: TextStyle(
                        fontSize: 17.5,
                      ),
                      children: [
                        TextSpan(
                          text: "setting".tr,
                        ),
                        WidgetSpan(
                          child: Padding(
                            padding:
                                const EdgeInsets.only(right: 18.0, left: 20.0),
                            child: Icon(
                              Icons.settings_rounded,
                              // color: Colors.white,
                              size: 19.0,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 16.0),
              child: Padding(
                padding: const EdgeInsets.only(right: 8.0),
                child: Align(
                  alignment: Alignment.centerRight,
                  child: Text.rich(
                    TextSpan(
                      style: TextStyle(
                        fontSize: 17.5,
                      ),
                      children: [
                        TextSpan(
                          text: "Contact Us".tr,
                        ),
                        WidgetSpan(
                          child: Padding(
                            padding:
                                const EdgeInsets.only(right: 18.0, left: 20.0),
                            child: Icon(
                              Icons.contact_mail_outlined,
                              // color: Colors.white,
                              size: 19.0,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 16.0),
              child: Padding(
                padding: const EdgeInsets.only(right: 8.0),
                child: Align(
                  alignment: Alignment.centerRight,
                  child: Text.rich(
                    TextSpan(
                      style: TextStyle(
                        fontSize: 17.5,
                      ),
                      children: [
                        TextSpan(
                          text: "About Us".tr,
                        ),
                        WidgetSpan(
                          child: Padding(
                            padding:
                                const EdgeInsets.only(right: 18.0, left: 20.0),
                            child: Icon(
                              Icons.people_outline,
                              // color: Colors.white,
                              size: 19.0,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
