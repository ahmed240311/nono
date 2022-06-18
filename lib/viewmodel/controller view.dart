import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nono/view/auth/login_screen.dart';
import 'package:nono/view/homescreen.dart';

import 'getxcontroller.dart';
class cotrollerView extends GetWidget<Auth> {
  @override
  Widget build(BuildContext context) {
    return Obx((){
      return(Get.find<Auth>().user!= null)
          ? HomeView()
          : LoginScreen();

    });
  }
}
