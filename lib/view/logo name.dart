import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LogoName extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 28.0),
      child: Container(
        width: double.infinity,
        height: MediaQuery.of(context).size.height / 2.3,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Container(
              alignment: Alignment.center,
              width: 200.0,
              child: Center(
                child: ListTile(
                  title:
                  Text(
                    'AL Nono',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize: 39.5,
                        fontFamily: 'bold',
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                  subtitle: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [

                      Padding(
                        padding: const EdgeInsets.only(right: 10.0),
                        child: Icon(
                          Icons.home_outlined,
                          color: Colors.white,
                          size: 37.5,
                        ),
                      )  ,
                      Padding(
                        padding: const EdgeInsets.only(right: 15.0),
                        child: Icon(
                          Icons.directions_car_outlined,
                          color: Colors.white,
                          size: 37.5,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Padding(
                padding: const EdgeInsets.only(right: 15.0),
                child: Center(
                  child: CircleAvatar(
                    // backgroundColor: Color,
                      backgroundColor: Colors.white,
                      radius: 26,
                      child: CircleAvatar(
                        radius: 23,
                        backgroundColor: Colors.black87.withOpacity(.8),
                        child: Column(
                          children: [
                            Icon(
                              Icons.home,
                              color: Colors.white,
                              size: 20.0,
                            ),
                            Expanded(
                              child: Divider(
                                endIndent: 5.0,
                                indent: 5.0,
                                color: Colors.white,
                                thickness: 1.0,
                              ),
                            ),
                            Icon(
                              Icons.directions_car_rounded,
                              color: Colors.white,
                              size: 20.0,
                            ),
                          ],
                        ),
                      )),
                )),

          ],
        ),
      ),
    );
  }
}
class LogoNameDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 28.0),
      child: Container(
        width: double.infinity,
        // height: MediaQuery.of(context).size.height / 2.3,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Padding(
                padding: const EdgeInsets.only(right: 10.0,left: 10),
                child: Center(
                  child: CircleAvatar(
                        radius: 19,
                        backgroundColor: Colors.orange,
                        child: Padding(
                          padding: const EdgeInsets.only(bottom: 8.0),
                          child: Icon(
                            Icons.home,
                            color: Colors.white,
                            size: 37.5,
                          ),
                        ),
                      ),
                )),
            Container(
              alignment: Alignment.center,
              child: Center(
                child: Text(
                  'AL Nono',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: 35.5,
                      fontFamily: 'bold',
                      fontWeight: FontWeight.bold,
                      color: Colors.blue),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
