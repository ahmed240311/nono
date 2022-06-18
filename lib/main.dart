// @dart=2.9
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nono/view/logo_screen.dart';
import 'package:nono/view/second%20logo.dart';

import 'helper/binding.dart';


void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  // FirebaseMessaging.instance.setForegroundNotificationPresentationOptions(alert: true,badge: true,sound: true);

  runApp(MyApp());

}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      initialBinding: Binding(),
      debugShowCheckedModeBanner: false,

      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: Scaffold(
        // body: cotrollerView(),
        // body: LogoScreen(),
        body: SecondLogo(),
      ),
    );
  }
}

