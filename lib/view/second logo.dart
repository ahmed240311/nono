import 'package:flutter/material.dart';
import 'package:nono/constant.dart';
import 'package:nono/model/customtext.dart';

class SecondLogo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        Container(
          decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage('images/login.jpg'), fit: BoxFit.cover),
          ),
        ),
        // Image.asset("images/login.jpg"),
        Container(
            decoration: BoxDecoration(
                gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomLeft,
          colors: [
            Colors.black87.withOpacity(.8),
            color,
          ],
        )
                // color: colorLogin.withOpacity(.76),
                )),
        Padding(
          padding: const EdgeInsets.only(top: 28.0),
          child: Container(
            width: double.infinity,
            height: MediaQuery.of(context).size.height / 2.3,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Padding(
                    padding: const EdgeInsets.only(right: 20.0),
                    child: Center(
                      child: CircleAvatar(
                          // backgroundColor: Color,
                          backgroundColor: Colors.white,
                          radius: 25,
                          child: CircleAvatar(
                            radius: 22,
                            backgroundColor: Colors.black87.withOpacity(.8),
                            child: Padding(
                              padding: const EdgeInsets.only(bottom: 5.0),
                              child: Icon(
                                Icons.home,
                                color: Colors.white,
                                size: 39.5,
                              ),
                            ),
                          )),
                    )),
                Container(
                  alignment: Alignment.center,
                  child: Center(
                    child: Text(
                      'AL Nono',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontSize: 39.5,
                          fontFamily: 'bold',
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),

        Positioned(
          top: 290.0,
          left: 7.0,
          right: 7.0,
          child: Column(
            // crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              ListTile(
                title: CustomText(
                  text: 'ابحث عن العقارات بضغطة زر',
                  color: Colors.white,
                  alignment: Alignment.center,
                  fontSize: 19.5,
                ),
                subtitle: Container(
                  width: MediaQuery.of(context).size.width / 1,
                  height: MediaQuery.of(context).size.height / 17.0,
                  // color: color,
                  decoration: BoxDecoration(
                      color: color,
                      borderRadius: BorderRadius.all(Radius.circular(10))),
                  child: CustomText(
                    text: 'ابحث',
                    color: Colors.white,
                    alignment: Alignment.center,
                    fontSize: 22.0,
                  ),
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height / 13.0,
              ),
              ListTile(
                title: CustomText(
                  text: 'قم بإضافة إعلانك',
                  color: Colors.white,
                  alignment: Alignment.center,
                  fontSize: 19.5,
                ),
                subtitle: Container(
                  width: MediaQuery.of(context).size.width / 1,
                  height: MediaQuery.of(context).size.height / 17.0,
                  // color: color,
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.white),
                      // color: Colors.white.withOpacity(.3),
                      borderRadius: BorderRadius.all(Radius.circular(10))),
                  child: CustomText(
                    text: 'إضافة إعلان   ',
                    color: Colors.white,
                    alignment: Alignment.center,
                    fontSize: 22.0,
                  ),
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height / 5.0,
              ),
              ListTile(
                title: CustomText(
                  text: 'بحث',
                  color: Colors.white,
                  alignment: Alignment.center,
                  fontSize: 19.5,
                ),
                subtitle: Container(
                    width: MediaQuery.of(context).size.width / 1,
                    height: MediaQuery.of(context).size.height / 17.0,
                    // color: color,
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.white),
                        // color: Colors.white.withOpacity(.3),
                        borderRadius: BorderRadius.all(Radius.circular(10))),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 12.0),
                      child: Align(
                        alignment: Alignment.centerRight,
                        child: Text.rich(
                          TextSpan(
                            style: TextStyle(
                              fontSize: 17,
                              color: Colors.white,
                            ),
                            children: [
                              WidgetSpan(
                                child: Padding(
                                  padding: const EdgeInsets.only(right: 178.0),
                                  child: Icon(
                                    Icons.arrow_back_ios,
                                    color: Colors.white,
                                    size: 20.0,
                                  ),
                                ),
                              ),
                              TextSpan(
                                text: 'عقارات للبيع ',
                              )
                            ],
                          ),
                        ),
                      ),
                    )),
              )
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 27.0, right: 5.0),
          child: Align(
            alignment: Alignment.topRight,
            child: IconButton(
              icon: Icon(
                Icons.menu_open_sharp,
                color: Colors.white,
                size: 28.0,
              ),
              onPressed: () {},
            ),
          ),
        )
      ],
    )
    );
  }
}
