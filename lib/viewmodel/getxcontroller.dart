import 'dart:io';

// import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

// import 'package:flutter_login_facebook/flutter_login_facebook.dart';
import 'package:get/get.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:image_picker/image_picker.dart';
import 'package:nono/model/usermodel.dart';
import 'package:nono/service/firestoreuser.dart';
import 'package:nono/view/homescreen.dart';

class Auth extends GetxController {
  GoogleSignIn _googleSignIn = GoogleSignIn(scopes: ['email']);
  FirebaseAuth _auth = FirebaseAuth.instance;
  DateTime selectedDateTime = DateTime.now();
  ListOfCatagory resultBack = new ListOfCatagory();

  // FacebookLogin _facebookLogin = FacebookLogin();
  late String email, password, name;
  // var showPass = false.obs;

  final dropdownValueLang = "اللغة العربية".obs;
  File? image;
  final picker = ImagePicker();
  Rx<User> _user = Rx<User>();

  String? get user => _user.value?.email;
  final tappedIndexReanted = 0.obs;
  final tappedIndexBedRoom = 0.obs;
  final tappedIndexbathRoom = 0.obs;
  final tappedIndexMafrosha = 2.obs;

  // var url;

  @override
  void onInit() {
    _user.bindStream(_auth.authStateChanges());
    resultBack.ShowResult();
    // subscribeToAdmin();
    // getDeviceToken();
    //  cofigureCallBack();
  }

  @override
  void onClose() {}

  @override
  void onReady() {}
  void changeColorBackGround(int changeColor) {
    tappedIndexReanted.value = changeColor;
    // tappedIndexBedRoom.value=changeColor;
    update();
    // tappedIndex.refresh();
  }
  void changeBackGroundBedRoom(int changeColor) {
    tappedIndexBedRoom.value=changeColor;
    update();
  }
 void changeBackGroundbathRoom(int changeColor) {
   tappedIndexbathRoom.value=changeColor;
    update();
  }
  void changeBackGroundMafrosha(int changeColor) {
    tappedIndexMafrosha.value=changeColor;
    update();
  }

  void setSelectedLanguage(String value) {
    dropdownValueLang.value = value;
  }

  Future pickImage() async {
    //pick image   use ImageSource.camera for accessing camera.
    final pickedFile = await picker.getImage(
        source: ImageSource.gallery,
        imageQuality: 100,
        maxHeight: 270.0,
        maxWidth: 270.0);

    if (pickedFile != null) {
      image = File(pickedFile.path);
    } else {
      print('No image selected.');
    }
    update();
  }

  // Future uploadPic(File _image1) async {
  //   try {
  //     FirebaseStorage storage = FirebaseStorage.instance;
  //     String fileName = basename(_image1.path);
  //
  //     Reference ref = storage.ref().child(fileName);
  //     UploadTask uploadTask = ref.putFile(_image1);
  //     TaskSnapshot taskSnapshot = await uploadTask;
  //
  //     final String url = (await taskSnapshot.ref.getDownloadURL());
  //
  //     /* await uploadTask.whenComplete(() {
  //
  //     url =  ref.getDownloadURL();
  //   }).catchError((onError) {
  //     print(onError);
  //   });*/
  //     update();
  //     // print("url : $url");
  //     return url;
  //   } catch (e) {
  //     print(e);
  //   }
  // }

  void googleSignInMethod() async {
    try {
      final GoogleSignInAccount googleUser = await _googleSignIn.signIn();
      GoogleSignInAuthentication googleSignInAuthentication =
          await googleUser.authentication;
      final AuthCredential credential = GoogleAuthProvider.credential(
        idToken: googleSignInAuthentication.idToken,
        accessToken: googleSignInAuthentication.accessToken,
      );
      await _auth.signInWithCredential(credential).then((user) async {
        saveUser(user);
        Get.offAll(HomeView());
      });
    } catch (e) {
      print(e);
    }
  }

  // void faceBookLoginMethod() async {
  //   FacebookLoginResult result =
  //       await _facebookLogin.logIn(customPermissions: ['email']);
  //   final facebookAccessToken = result.accessToken.token;
  //   if (result.accessToken == FacebookLoginStatus.success) {
  //     final faceCrediental =
  //         FacebookAuthProvider.credential(facebookAccessToken);
  //     await _auth.signInWithCredential(faceCrediental)   .then((user) async {
  //       saveUser(user);
  //       Get.offAll(HomeView());
  //
  //     });
  //   }
  // }

  void signInEmailAndPassword() async {
    try {
      await _auth.signInWithEmailAndPassword(email: email, password: password);
      Get.snackbar(
          '                '
              '             '
              ' Success',
          "  ",
          margin: EdgeInsets.all(7.0),
          colorText: Colors.black,
          snackPosition: SnackPosition.BOTTOM);
      await Future.delayed(Duration(seconds: 2));
      Get.offAll(HomeView());
    } catch (e) {
      Get.snackbar(
          '                '
              '          '
              'error in login',
          "  ",
          margin: EdgeInsets.all(7.0),
          colorText: Colors.black,
          snackPosition: SnackPosition.BOTTOM);
    }
  }

  void createEmailAndPassword() async {
    try {
      await _auth
          .createUserWithEmailAndPassword(email: email, password: password)
          .then((user) async {
        saveUser(user);
      });
      Get.snackbar(
          '                '
              '             '
              ' Success',
          "  ",
          margin: EdgeInsets.all(7.0),
          colorText: Colors.black,
          snackPosition: SnackPosition.BOTTOM);
      await Future.delayed(Duration(seconds: 2));

      Get.offAll(HomeView());
    } catch (e) {
      print(e);

      Get.snackbar(
          '                '
              '          '
              'Error in login',
          "  ",
          margin: EdgeInsets.all(7.0),
          colorText: Colors.black,
          snackPosition: SnackPosition.BOTTOM);
    }
  }

  void saveUser(UserCredential user) async {
    await FireStoreUser().addUserToFireStore(UserModel(
      id: user.user.uid,
      name: name == null ? user.user.displayName : name,
      email: user.user.email,
      pass: password,
    ));
  }
/*
  void getDeviceToken() async{
String deviceToken=await firebaseMessaging.getToken();
print('deviceToken: $deviceToken');

  }
  void cofigureCallBack() {
    firebaseMessaging.configure(
      onLaunch: (message) async {
        print('onLaunch: $message');

        // Get.to(showResult);
      },
      onMessage: (message) async {
        print('onMessage: $message');
        // Get.to(showResult);
      },
      onResume: (message) async {
        print('onResume: $message');
        // Get.to(showResult);
      },

      // onResume: (Map<String, dynamic> message) async {
      //   // Get.to(showResult);
      // },

    );
  }

  void subscribeToAdmin() {

    firebaseMessaging.subscribeToTopic('Admin');
  }*/

}
