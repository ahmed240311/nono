import 'package:flutter/material.dart';

import 'customtext.dart';

class CustomBtnSocial extends StatelessWidget {
  final String text;

  final String imageName;

  final Function()? onPress;

  const CustomBtnSocial(
      {Key? key, required this.imageName, required this.text, this.onPress})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12.0),
          color: Colors.grey.shade200),
      child: FlatButton(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
          onPressed: onPress,
          child: Row(
            children: [
              Image.asset(imageName,
                  width: MediaQuery.of(context).size.width / 13.7,
                  height: MediaQuery.of(context).size.height / 13.7),
              SizedBox(
                height: MediaQuery.of(context).size.height / 11.7,
                width: MediaQuery.of(context).size.width / 13.0,
              ),
              CustomText(
                text: text,
              ),
            ],
          )),
    );
  }
}
