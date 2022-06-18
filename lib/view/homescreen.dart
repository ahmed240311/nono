import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:nono/model/customtext.dart';
import 'package:nono/viewmodel/getxcontroller.dart';

class HomeView extends GetWidget<Auth> {

  FirebaseAuth _auth = FirebaseAuth.instance;
  final GlobalKey<FormState> _globlKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: CustomText(
          text: "El Nono",
          alignment: Alignment.center,
          color: Colors.white,
          fontSize: 30.0,
        ),
        elevation: 0.0,
        backgroundColor: Colors.blue,
      ),
      body: Form(
        key: _globlKey,
        child:
        Padding(
          padding: const EdgeInsets.only(top: 10.0, right: 24.0, left: 24.0),
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              children: [


              ],
            ),
          ),
        ),
      ),
    );
  }
}

void notSuccsss() {
  Get.snackbar(
      '                       '
          ' يجب ملئ جميع الحقول',
      "  ",
      margin: EdgeInsets.all(7.0),
      colorText: Colors.black,
      snackPosition: SnackPosition.BOTTOM);
}

void Succsss() {
  Get.snackbar(
      '                    '
          '         '
          '  تم الارسال  ',
      "  ",
      margin: EdgeInsets.all(7.0),
      colorText: Colors.black,
      snackPosition: SnackPosition.BOTTOM);
}
