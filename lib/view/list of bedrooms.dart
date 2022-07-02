import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nono/model/customtext.dart';
import 'package:nono/viewmodel/getxcontroller.dart';

class BedRoomList extends GetWidget<Auth> {
  List times = ['استديو', '1', '2', '3', '4', '5', '6', '7', '8'];
  @override
  Widget build(BuildContext context) {
  return ListView.builder(
    itemCount: times.length,
    scrollDirection: Axis.horizontal,
    reverse: true,
    itemBuilder: (context, index) {
      return Obx(() => Padding(
        padding: const EdgeInsets.all(5.0),
        child: GestureDetector(
          onTap: () {
            controller.changeBackGroundBedRoom(index);
          },
          child: Container(
            width: MediaQuery.of(context).size.width / 4.0,
            child: CustomText(
              text: times[index],
              alignment: Alignment.center,
              fontSize: 16.5,
              color: controller.tappedIndexBedRoom.value == index
                  ? Colors.green.withOpacity(.7)
                  : Colors.black87.withOpacity(.8),
            ),
            decoration: BoxDecoration(
                border: Border.all(
                  color: controller.tappedIndexBedRoom.value == index
                      ? Colors.green.withOpacity(.7)
                      : Colors.grey.withOpacity(.4),
                ),
                borderRadius: BorderRadius.all(Radius.circular(7))),
          ),
        ),
      ));
    },
  );
}}
