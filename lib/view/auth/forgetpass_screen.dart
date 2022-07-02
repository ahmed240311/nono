import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nono/model/custombutton.dart';
import 'package:nono/model/customtext.dart';
import 'package:nono/view/auth/login_screen.dart';

import '../../constant.dart';

class ForgetScreen extends StatefulWidget {
  // static const String id = 'forget';

  @override
  _forgetpass createState() => _forgetpass();
}

class _forgetpass extends State<ForgetScreen> {
  final _text = TextEditingController();
  bool _validate = false;
  String _emailController = "";
  final _formkey = new GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
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
        flexibleSpace: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.centerRight,
                end: Alignment.centerLeft,
                colors: <Color>[Colors.white30, Colors.blue]),
          ),
        ),
        elevation: 0.0,
        // backgroundColor:appbar
        leading: GestureDetector(
            onTap: () {
              Get.offAll(LoginScreen());
            },
            child: Icon(
              Icons.arrow_back,
              color: Colors.white,
            )),
      ),
      backgroundColor: Colors.white,
      body: Container(
        child: Form(
          key: _formkey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                  child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  new Text(
                    ' We happy to serve you ',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 30,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  Icon(
                    Icons.favorite,
                    color: Colors.pink,
                    size: 24.0,
                    semanticLabel: 'Text to announce in accessibility modes',
                  ),
                ],
              )),
              SizedBox(
                height: MediaQuery.of(context).size.height / 10.0,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: Card(
                  child: TextFormField(
                    controller: _text,
                    decoration: InputDecoration(
                      suffixIcon: Icon(
                        Icons.email,
                        color: Colors.black26,
                      ),
                      labelText: 'please enter your email',
                      errorText: _validate ? 'Value Can\'t Be Empty' : null,
                      border: OutlineInputBorder(
                        borderSide: BorderSide.none,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      focusedBorder: InputBorder.none,
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide.none,
                      ),
                    ),
                    keyboardType: TextInputType.emailAddress,
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      color: Colors.black,
                    ),
                    onChanged: (val) => _emailController = val,
                  ),
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height / 15.0,
              ),
              Padding(
                padding: const EdgeInsets.all(27.0),
                child: CustomButton(
                  buttonText: "Send ",
                  color: Colors.blue.shade500,
                  onPress: () {
                    _formkey.currentState!.save();
                    if (_formkey.currentState!.validate()) {
                      if (_emailController.isNotEmpty ) {
                        FirebaseAuth.instance
                            .sendPasswordResetEmail(email: _emailController)
                            .then((val) => print("check your mail"));
                        showAlertDialog(context);
                        setState(() {
                          _text.text.isEmpty
                              ? _validate = true
                              : _validate = false;
                        });
                      }else notSuccsss();


                    }
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  showAlertDialog(BuildContext context) {
    // set up the button
    Widget okButton = FlatButton(
      child: Text("OK"),
      onPressed: () {
        Navigator.of(context).pop(); // dismiss dialog
      },
    );

    // set up the AlertDialog
    AlertDialog alert = AlertDialog(
      title: Text("Notice"),
      content: Text("A message sent to your email."),
      actions: [
        okButton,
      ],
    );

    // show the dialog
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return alert;
      },
    );
  }
}

void notSuccsss() {
  Get.snackbar(
      '                  '
          '  يجب إدخال البريد الإلكتروني',
      "  ",
      margin: EdgeInsets.all(7.0),
      colorText: Colors.black,
      snackPosition: SnackPosition.BOTTOM);
}