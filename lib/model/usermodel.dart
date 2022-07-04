class UserModel {
 late String id ,name,email,pass;

  UserModel({required this.id, required this.name, required this.email, required this.pass});

  UserModel.fromJson(Map<dynamic,dynamic> map){
    if(map==null){
      return;
    }
    id=map['id'];
    name=map['name'];
    email=map['email'];
    // pic=map['pic'];
    pass=map['pass'];
  }
  toJson(){
    return{
    'id':id,
    'name':name,
    'email':email,
    // 'pic':pic,
    'pass':pass,

    };
  }
}
class ModelForListOfPage {
 late String id ,uid,pass,price,address,type,furnished,sale_type,rooms_num,bathrooms_num,area,ad_dasc,contact_email,contact_phone,contact_whatsapp;

late List pics;
 ModelForListOfPage({
   required this.id,
   required this.uid,
   required this.pics,
   required this.price,
   required this.address,
   required this.type,
   required this.furnished,
   required this.sale_type,
   required this.rooms_num,
   required this.bathrooms_num,
   required this.area,
   required this.ad_dasc,
   required this.contact_email,
   required this.contact_phone,
   required this.contact_whatsapp,

 });

 ModelForListOfPage.fromJson(Map<dynamic,dynamic> map){
    if(map==null){
      return;
    }
    id=map['ID'];
    uid=map['UID'];
    pics=map['pics'];
    price=map['price'];
    address=map['address'];
    type=map['type'];
    furnished=map['furnished'];
    sale_type=map['sale_type'];
    rooms_num=map['rooms_num'];
    bathrooms_num=map['bathrooms_num'];
    area=map['area'];
    ad_dasc=map['ad_dasc'];
    contact_email=map['contact_email'];
    contact_phone=map['contact_phone'];
    contact_whatsapp=map['contact_whatsapp'];
    // pic=map['pic'];
    pass=map['pass'];
  }
  toJson(){
    return{
    'ID':id,
    'UID':uid,
    'pics':pics,
    'price':price,
    'address':address,
    'type':type,
    'furnished':furnished,
    'sale_type':sale_type,
    'rooms_num':rooms_num,
    'bathrooms_num':bathrooms_num,
    'area':area,
    'contact_email':contact_email,
    'contact_phone':contact_phone,
    'contact_whatsapp':contact_whatsapp,
    };
  }
}