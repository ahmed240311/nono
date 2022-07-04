import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:nono/model/customtext.dart';

class TogaryBuilding extends StatefulWidget {
  @override
  _TogaryBuildingState createState() => _TogaryBuildingState();
}

class _TogaryBuildingState extends State<TogaryBuilding> {
  List togaryText = [
    'مكتب',
    'محل تجاري',
    'صالة عرض',
    'عمارة تجارية',
    'مستودع',
    'ارض تجارية',
    'ارض صناعية',
    'مزرعة',
    'ارض زراعية'
  ];
  List togaryIcons = [
    'images/office.png',
    'images/shoptogary.png',
    'images/sala.png',
    'images/emaratogary.png',
    'images/mostadh.png',
    'images/groundtogary.png',
    'images/groundsenahy.png',
    'images/farm.png',
    'images/groundfarm.png',
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
      padding: const EdgeInsets.only(top: 7.0),
      child: ListView.builder(
        shrinkWrap: true,
        itemCount: togaryIcons.length,
        scrollDirection: Axis.horizontal,
        reverse: true,
        itemBuilder: (context, index) {
          return Container(
            width: MediaQuery.of(context).size.width / 3.4,
            child: ListTile(
              onTap: () {
                setState(() {
                  tappedIndex = index;
                });
              },
              title: CircleAvatar(
                  backgroundColor:
                  tappedIndex == index
                      ? Colors.green.withOpacity(.7)
                      : Colors.grey.withOpacity(.3),
                  radius: 23,
                  child: Padding(
                    padding: const EdgeInsets.all(7.4),
                    child: ClipOval(
                      child: Image.asset(
                        togaryIcons[index],
                        width: MediaQuery.of(context).size.width / 3.7,
                        height: MediaQuery.of(context).size.height / 17.2,
                      ),
                    ),
                  )),
              minVerticalPadding: 4.0,
              contentPadding: EdgeInsets.only(top: 20, bottom: 56.0),
              subtitle: CustomText(
                text: togaryText[index],
                alignment: Alignment.center,
                fontSize: 16.7,
                color: Colors.black87.withOpacity(.6),
              ),
            ),
          );
        },
      ),
    );
  }
}

// Widget Togaryuilding(BuildContext context)  {
//   List togaryText = [
//     'مكتب',
//     'محل تجاري',
//     'صالة عرض',
//     'عمارة تجارية',
//     'مستودع',
//     'ارض تجارية',
//     'ارض صناعية',
//     'مزرعة',
//     'ارض زراعية'
//   ];
//   List togaryIcons = [
//     'images/office.png',
//     'images/shoptogary.png',
//     'images/sala.png',
//     'images/emaratogary.png',
//     'images/mostadh.png',
//     'images/groundtogary.png',
//     'images/groundsenahy.png',
//     'images/farm.png',
//     'images/groundfarm.png',
//   ];
//   List<Color> _color = [Colors.transparent,Colors.transparent,Colors.transparent,Colors.transparent,Colors.transparent,Colors.transparent,
//     Colors.transparent,
//     Colors.transparent,
//     Colors.transparent,
//     Colors.transparent
//   ];
//   bool pressAttention = false;
//
//   return Padding(
//     padding: const EdgeInsets.only(top: 7.0),
//     child: ListView.builder(
//       itemCount: togaryIcons.length,
//       scrollDirection: Axis.horizontal,
//       reverse: true,
//       itemBuilder: (context, index) {
//         return Container(
//           width: MediaQuery.of(context).size.width / 3.4,
//           child: ListTile(
//             onTap: () {
//
//             },
//             title: CircleAvatar(
//                 backgroundColor: pressAttention ? Colors.green : Colors.grey,
//                 radius: 25,
//                 child: Padding(
//                   padding: const EdgeInsets.all(7.1),
//                   child: ClipOval(
//                     child: Image.asset(
//                       togaryIcons[index],
//                       width: MediaQuery.of(context).size.width / 3.7,
//                       height: MediaQuery.of(context).size.height / 17.2,
//                     ),
//                   ),
//                 )),
//             minVerticalPadding: 4.0,
//             contentPadding: EdgeInsets.only(top: 19, bottom: 56.0),
//             subtitle: CustomText(
//               text: togaryText[index],
//               alignment: Alignment.center,
//               fontSize: 16.7,
//               color: Colors.black87.withOpacity(.6),
//             ),
//           ),
//         );
//       },
//     ),
//   );
// }
