import 'package:flutter/material.dart';
import 'package:twalek/DashBoard/DashBoardItems/collectors/collectorsMain.dart';
import 'package:twalek/DashBoard/DashBoardItems/collectors/ui/collectorTable.dart';
import 'package:twalek/DashBoard/DashBoardItems/summery/summery.dart';
import 'package:twalek/DashBoard/SideDrawer/sideDrawer.dart';
import 'package:twalek/commonUi/commonColors.dart';

class DashBoardHome extends StatefulWidget {
  const DashBoardHome({super.key});

  @override
  State<DashBoardHome> createState() => _DashBoardHomeState();
}

class _DashBoardHomeState extends State<DashBoardHome> {
  var pageIndex = 0;

  var pages = [
    const Summery(),
    CollectorsMain()
    // Add other pages here 
  ];

  void changePage(int value) {
    setState(() {
      pageIndex = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    var heightDevice = MediaQuery.of(context).size.height;
    var widthDevice = MediaQuery.of(context).size.width;

    return Container(
      height: heightDevice,
      width: widthDevice,
      color: pageIndex == 1 ? Color.fromRGBO(1, 225, 241, 0.031) : const Color.fromRGBO(249, 249, 249, 1),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SideDrawer(
            changePage: changePage,
          ),
          Expanded(  // Added Expanded to make sure the content takes available space
            child: pages[pageIndex],
          )
        ],
      ),
    );
  }
}
