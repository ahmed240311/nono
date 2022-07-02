import 'dart:convert';
import 'dart:convert' as json;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:http/http.dart' as http;
import 'package:nono/model/usermodel.dart';

var url = Uri.parse(
    'https://management-25dfd-default-rtdb.firebaseio.com/product.json');

class FireStoreUser {
  final CollectionReference _collectionReference =
  FirebaseFirestore.instance.collection('Users');

  Future<void> addUserToFireStore(UserModel userModel) async {
    return await _collectionReference.doc(userModel.id).set(userModel.toJson());
  }
}

class ListOfCatagory {
 late List ListOfResult;

  // Future<List> ShowResult(int? DetailsubId) async {
  Future  <void> ShowResult() async {
    var url = Uri.parse(
        // 'http://real-estate-back-end.c1.biz/Ad-API.php?list/page/${DetailsubId}');
        'http://real-estate-back-end.c1.biz/Ad-API.php?list/page');
    await http.get(url,
        headers: {
      "Content-Type": "application/json",

    }).then((response) {
      Map map = json.jsonDecode(response.body);
      if (response.statusCode == 200) {
        print(map);
        ListOfResult = map['data'];
        print('List: ${ListOfResult.length}');
        return ListOfResult;
      }
    });
    // return ListOfResult;
  }



}


//
// class FireBaseHome {
//   // DatabaseReference _reference=FirebaseDatabase.instance.reference().child("product");
//   final response = http.post(
//       'https://eledary-76df1-default-rtdb.firebaseio.com/product.json',
//       body: json.encode({"id": 1}));
// }
