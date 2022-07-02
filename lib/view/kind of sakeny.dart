import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:nono/model/customtext.dart';

import 'list of bathrooms.dart';
import 'list of bedrooms.dart';

class SakenyBuilding extends StatefulWidget {
  @override
  _SakenyBuildingState createState() => _SakenyBuildingState();
}

class _SakenyBuildingState extends State<SakenyBuilding> {
  List togaryText = [
    'شقة',
    'فيلا',
    'دور',
    'شقة فندقية',
    'غرفة فندقية',
    'عمارة سكنية',
    'ارض سكنية',
    'استراحة',
    'شالية',
    'قصر',
    'سكن عمال'
  ];
  List togaryIcons = [
    'images/sakeny/houce.png',
    'images/sakeny/villa.png',
    'images/sakeny/floor.png',
    'images/sakeny/hotel houce.png',
    'images/sakeny/hotel room.png',
    'images/sakeny/emara sakeny.png',
    'images/groundtogary.png',
    'images/sakeny/rest.png',
    'images/sakeny/beach.png',
    'images/sakeny/qasr.png',
    'images/sakeny/workers.png',
  ];
  int? tappedIndex;

  @override
  void initState() {
    super.initState();
    tappedIndex = 0;
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 4.0),
      child: ListView(
        shrinkWrap: true,
        children: [
          Container(
            height: MediaQuery.of(context).size.height / 7.3,
            child: ListView.builder(
              itemCount: togaryIcons.length,
              scrollDirection: Axis.horizontal,
              reverse: true,
              shrinkWrap: true,
              itemBuilder: (context, index) {
                return Container(
                  width: MediaQuery.of(context).size.width / 3.9,
                  // height:MediaQuery.of(context).size.height/95.2,
                  child: ListTile(
                    onTap: () {
                      setState(() {
                        tappedIndex = index;
                      });
                    },
                    title: CircleAvatar(
                        backgroundColor: tappedIndex == index
                            ? Colors.green.withOpacity(.7)
                            : Colors.grey.withOpacity(.2),
                        radius: 22,
                        child: Padding(
                          padding: const EdgeInsets.all(5.8),
                          child: ClipOval(
                            child: Image.asset(
                              togaryIcons[index],
                              width: MediaQuery.of(context).size.width / 3.6,
                              height: MediaQuery.of(context).size.height / 17.1,
                            ),
                          ),
                        )),
                    minVerticalPadding: 3.0,
                    contentPadding: EdgeInsets.only(top: 17, bottom: 54.0),
                    subtitle: CustomText(
                      text: togaryText[index],
                      alignment: Alignment.center,
                      fontSize: 16.0,
                      color: Colors.black87.withOpacity(.6),
                    ),
                  ),
                );
              },
            ),
          ),
          Icon(
            Icons.arrow_drop_down,
            color: Colors.blue,
            size: 18.0,
          ),
          Container(
              height: MediaQuery.of(context).size.height / 7.33,
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(6.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        CustomText(
                          text: 'غرف النوم',
                          color: Colors.black,
                          alignment: Alignment.topRight,
                          fontSize: 22.8,
                        ),
                        SizedBox(
                          width: 10.0,
                        ),
                        Icon(
                          Icons.bed_outlined,
                          color: Colors.blue,
                          size: 20.0,
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: MediaQuery.of(context).size.height / 18.9,
                    child: BedRoomList(),
                  ),
                ],
              )),
          Divider(
            thickness: .8,
            color: Colors.grey.withOpacity(.3),
          ),
          Container(
              height: MediaQuery.of(context).size.height / 7.93,
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(6.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        CustomText(
                          text: 'الحمامات',
                          color: Colors.black,
                          alignment: Alignment.topRight,
                          fontSize: 22.8,
                        ),
                        SizedBox(
                          width: 13.0,
                        ),
                        Icon(
                          Icons.bathroom_outlined,
                          color: Colors.blue,
                          size: 20.0,
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: MediaQuery.of(context).size.height / 18.9,
                    child: BathRoomList(),
                  ),
                ],
              )),
        ],
      ),
    );
  }
}
