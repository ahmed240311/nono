import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nono/model/customtext.dart';
import 'package:nono/viewmodel/getxcontroller.dart';

class MafroshaList extends GetWidget<Auth> {
  List mafrosha = ['غير مفروشة', 'مفروشة', 'الجميع'];

  // int tappedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: mafrosha.length,
        scrollDirection: Axis.horizontal,
        reverse: true,
        itemBuilder: (context, index) {
          return Obx(() => Padding(
            padding: const EdgeInsets.all(5.0),
            child: GestureDetector(
              onTap: () {
                controller.changeBackGroundMafrosha(index);
              },
              child: Container(
                width: MediaQuery.of(context).size.width / 4.0,
                child: CustomText(
                  text: mafrosha[index],
                  alignment: Alignment.center,
                  fontSize: 17.0,
                  color:  controller.tappedIndexMafrosha.value == index
                      ? Colors.green.withOpacity(.7)
                      : Colors.black87.withOpacity(.8),
                ),
                decoration: BoxDecoration(
                    border: Border.all(
                      color: controller.tappedIndexMafrosha.value == index
                          ? Colors.green.withOpacity(.7)
                          : Colors.grey.withOpacity(.3),
                    ),
                    borderRadius: BorderRadius.all(Radius.circular(7))),
              ),
            ),
          ));
        });
  }
}
