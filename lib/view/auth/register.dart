import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nono/model/customTextForm.dart';
import 'package:nono/model/custombutton.dart';
import 'package:nono/model/customtext.dart';
import 'package:nono/viewmodel/getxcontroller.dart';

import '../../constant.dart';
import 'login_screen.dart';

class RegisterView extends GetWidget<Auth> {
  final GlobalKey<FormState> _globalKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        shadowColor: Colors.white60,
centerTitle: true,
        title: Padding(
          padding: const EdgeInsets.only(right: 35.0),
          child: CustomText(
            text: "Al Nono",
            alignment: Alignment.center,
            color: Colors.white,
            fontSize: 30.0,
          ),
        ),
        elevation: 0.0,
        backgroundColor: color,
        leading: GestureDetector(
            onTap: () {
              Get.offAll(LoginScreen());
            },
            child: Icon(
              Icons.arrow_back,
              color: Colors.white,
            )),
      ),
      body: Form(
        key: _globalKey,
        child: Padding(
          padding: const EdgeInsets.only(top: 40.0, right: 20.0, left: 20.0),
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              children: [
                SizedBox(
                  height: MediaQuery.of(context).size.height/49.9,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CustomText(
                      text: "Welcome",
                      fontSize: 31.0,
                    ),
                    CustomText(
                      text: "Sign Up",
                      fontSize: 18,
                      color: color,
                    ),
                  ],
                ),
                SizedBox(
                  height: 10.0,
                ),
                CustomText(
                  text: "Sign Up To Continue",
                  fontSize: 14.4,
                  color: Colors.grey,
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height/24.9,
                ),
                CustomTextFormField(
                  text: "Name",
                  // hint: "Name",
                  icon: Icon(Icons.drive_file_rename_outline),

                  onSave: (value) {
                    controller.name = value;
                  },
                  validator: (value) {
                    if (value == null) {
                      print('required');
                    }
                  }, type:  TextInputType.name,
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height/18.9,
                ),
                CustomTextFormField(
                  text: "Email",
                  // hint: "Email",
                  icon: Icon(Icons.email),

                  onSave: (value) {
                    controller.email = value;
                  },
                  validator: (value) {
                    if (value == null) {
                      print('required');
                    }
                  }, type:  TextInputType.emailAddress,
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height/18.9,
                ),
                CustomTextFormField(
                  text: "**Password**",
                  // hint: "**Password**",
                  icon: Icon(Icons.password_rounded),

                  onSave: (value) {
                    controller.password = value;
                  },
                  validator: (value) {
                    if (value == null) {
                      print('required');
                    }
                  }, type:  TextInputType.name,
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height / 8.9,
                ),
                CustomButton(
                  buttonText: 'Sign Up',
                  onPress: () {
                    _globalKey.currentState!.save();
                    if (_globalKey.currentState!.validate()) {
                      controller.createEmailAndPassword();
                    }
                  },
                  color: color,
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height/26.9,
                ),
                Divider(
                  color: Colors.grey,
                  thickness: 0.7,
                  indent: 79.0,
                  endIndent: 79.0,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
