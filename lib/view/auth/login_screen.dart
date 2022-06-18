
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nono/model/customTextForm.dart';
import 'package:nono/model/custombutton.dart';
import 'package:nono/model/custombuttonSocial.dart';
import 'package:nono/model/customtext.dart';
import 'package:nono/view/auth/register.dart';
import 'package:nono/viewmodel/getxcontroller.dart';

import '../../constant.dart';
import 'forgetpass_screen.dart';

class LoginScreen extends GetWidget<Auth> {
  final GlobalKey<FormState> _globalKey = GlobalKey<FormState>();
  bool _showpass = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        shadowColor: Colors.white60,
        title: CustomText(
          text: "Al Nono",
          alignment: Alignment.center,
          color: Colors.white,
          fontSize: 30.0,
        ),
        elevation: 0.0,
        backgroundColor: color,
      ),
      body: Form(
        key: _globalKey,
        child: Padding(
          padding: const EdgeInsets.only(top: 40.0, right: 20.0, left: 20.0),
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CustomText(
                      text: "Welcome",
                      fontSize: 31.0,
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>RegisterView()));
                        // Get.to(RegisterView());
                      },
                      child: CustomText(
                        text: "Sign Up",
                        fontSize: 18,
                        color: color,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 7.0,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 5.0),
                  child: CustomText(
                    text: "Sign In To Continue",
                    fontSize: 14.0,
                    color: Colors.grey,
                  ),
                ),
              SizedBox(
                height: MediaQuery.of(context).size.height/24.9,
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
                  },
                  type:  TextInputType.emailAddress,
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height/18.9,
                ),
                CustomTextFormField(
                  text: "**Password**",
                  // hint: "**Password**",
                  onSave: (value) {
                    controller.password = value;
                  },
                  validator: (value) {
                    if (value == null) {
                      print('required');
                    }
                  },
                  type:  TextInputType.name,

                  icon:   Icon(Icons.password ),
                    // onPressed: () {
                    //  controller.changeIcon( this._showpass);
                    // },

                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height/64.9,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 8.0),
                  child: GestureDetector(
                    child: CustomText(
                      text: "Forget Password",
                      fontSize: 12.5,
                      alignment: Alignment.topLeft,
                    ),
                    onTap: () {
                      Get.off(ForgetScreen());
                      // Navigator.pushNamed(context, ForgetScreen.id);
                    },
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height/21.9,
                ),
                CustomButton(
                  buttonText: 'SIGN IN',
                  onPress: () {
                    _globalKey.currentState!.save();
                    if (_globalKey.currentState!.validate()) {
                      controller.signInEmailAndPassword();
                    }
                  },
                  color: color,
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height/25.9,
                ),
                Divider(
                  color: Colors.grey,
                  thickness: 0.7,
                  indent: 89.0,
                  endIndent: 89.0,
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height/22.9,
                ),
                Center(
                  child: Container(
                    width: MediaQuery.of(context).size.width/1.27,
                    child: Row(
                      children: <Widget>[
                        Expanded(
                            child: Divider(
                              color: Colors.grey[800],
                            )),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          'or',
                          style: TextStyle(
                              color: Colors.grey[800],
                              fontSize: 15.5,
                              fontWeight: FontWeight.w500),
                        ),
                        SizedBox(
                          width: 10.0,
                        ),
                        Expanded(
                            child: Divider(
                              color: Colors.grey[800],
                            )),
                      ],
                    ),
                  ),
                ),

                SizedBox(
                  height: MediaQuery.of(context).size.height/9.0,
                ),
                // CustomBtnSocial(
                //   onPress: () {
                //     // controller.faceBookLoginMethod();
                //   },
                //   text: 'Sign In With FaceBook',
                //   imageName: 'images/facebook.png',
                // ),
                // SizedBox(
                //   height: 20.0,
                // ),
                CustomBtnSocial(
                  onPress: () {
                    controller.googleSignInMethod();
                  },
                  text: 'Sign In With Google',
                  imageName: 'images/google.png',
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
