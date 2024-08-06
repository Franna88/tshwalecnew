import 'package:flutter/material.dart';
import 'package:twalek/DashBoard/SideDrawer/ui/myDrawerButtons.dart';
import 'package:twalek/commonUi/commonColors.dart';
import 'package:twalek/commonUi/myTextStyle.dart';

class SideDrawer extends StatefulWidget {
  final Function(int) changePage;
  const SideDrawer({super.key, required this.changePage});

  @override
  State<SideDrawer> createState() => _SideDrawerState();
}

class _SideDrawerState extends State<SideDrawer> {
  int activeIndex = 0;

  void _handleItemClick(int index) {
    setState(() {
      activeIndex = index;
    });
    widget.changePage(index);  // Notify the parent widget to change the page
  }

  @override
  Widget build(BuildContext context) {
    var heightDevice = MediaQuery.of(context).size.height;
    var widthDevice = MediaQuery.of(context).size.width;
    return Material(
      borderRadius: const BorderRadius.only(
        topRight: Radius.circular(20),
        bottomRight: Radius.circular(20),
      ),
      elevation: 8,
      child: Container(
        width: widthDevice < 1500 ? 190 : 250,
        height: heightDevice,
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(20),
            bottomRight: Radius.circular(20),
          ),
        ),
        child: Drawer(
          backgroundColor: Colors.white,
          child: Padding(
            padding: const EdgeInsets.all(25),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.asset('images/logoT.png'),
                const SizedBox(
                  height: 15,
                ),
                MyDrawerButtons(
                  buttonText: 'Summery',
                  buttonIcon: Icons.trending_up,
                  isActive: activeIndex == 0,
                  onPressed: () => _handleItemClick(0),
                ),
                MyDrawerButtons(
                  buttonText: 'Collectors',
                  buttonIcon: Icons.bolt,
                  isActive: activeIndex == 1,
                  onPressed: () => _handleItemClick(1),
                ),
                MyDrawerButtons(
                  buttonText: 'People',
                  buttonIcon: Icons.group,
                  isActive: activeIndex == 2,
                  onPressed: () => _handleItemClick(2),
                ),
                MyDrawerButtons(
                  buttonText: 'Vehicles',
                  buttonIcon: Icons.grading,
                  isActive: activeIndex == 3,
                  onPressed: () => _handleItemClick(3),
                ),
                const SizedBox(height: 40,),
                MyTextStyle(
                  text: 'Queries',
                  fontWeight: FontWeight.w600,
                  textColor: CommonColors().textGrey,
                ),
                const SizedBox(height: 20,),
                MyDrawerButtons(
                  buttonText: 'Progress',
                  buttonIcon: Icons.lightbulb_outline,
                  isActive: activeIndex == 4,
                  onPressed: () => _handleItemClick(4),
                ),
                MyDrawerButtons(
                  buttonText: 'Setting',
                  buttonIcon: Icons.settings,
                  isActive: activeIndex == 5,
                  onPressed: () => _handleItemClick(5),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
