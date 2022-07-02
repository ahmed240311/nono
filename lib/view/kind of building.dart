import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nono/model/SolidIndicator.dart';
import 'package:nono/model/customtext.dart';
import 'package:nono/viewmodel/getxcontroller.dart';

import 'kind of sakeny.dart';
import 'kind of togary.dart';
import 'list of times rented.dart';

class KindofBuilding extends StatefulWidget {
  @override
  _KindofBuildingState createState() => _KindofBuildingState();

}

class _KindofBuildingState extends State<KindofBuilding>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>(debugLabel: 'building');

  @override
  void initState() {
    _tabController = new TabController(length: 2, vsync: this);
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            height: MediaQuery.of(context).size.height/19.2,
            child: TabBar(
              // indicatorColor: Colors.white30,
              indicatorSize: TabBarIndicatorSize.label,
              indicator: SolidIndicator(),
              unselectedLabelColor: Colors.black12.withOpacity(.3),
              labelColor: Colors.white30,
              tabs: <Widget>[
               Container(
                 child: Tab(
                      icon: CustomText(
                        text:'تجاري',
                        alignment: Alignment.center,
                        color: Colors.black54,
                        fontSize: 22.0,
                      ),
                    ),
                   decoration: BoxDecoration(
                     border: Border.all(color: Colors.black12.withOpacity(.11)),
                     // color: Colors.white.withOpacity(.3),
                     // borderRadius:
                     // BorderRadius.all(Radius.circular(6))
                   )

               ),


                Container(
                    child: Tab(
                      icon: CustomText(
                        text: '    سكني   ',
                        alignment: Alignment.center,
                        color: Colors.black54,
                        fontSize: 22.0,
                      ),
                    ),
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.black12.withOpacity(.11)),
                      // color: Colors.white.withOpacity(.3),
                      // borderRadius:
                      // BorderRadius.all(Radius.circular(6))
                    )
                )
              ],
              controller: _tabController,
            ),
          ),
          Expanded(
            child: TabBarView(
              children: [
                TogaryBuilding(),
                SakenyBuilding()
              ],
              controller: _tabController,
            ),
          ),
          Divider(
            color: Colors.grey.withOpacity(.3),
            thickness: 1.0,
            height: MediaQuery.of(context).size.height/20.1,
          ),

        ],
      ),
    );
  }
}
