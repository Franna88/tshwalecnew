import 'package:flutter/material.dart';
import 'package:twalek/DashBoard/DashBoardItems/summery/models/siteActivityModel.dart';
import 'package:twalek/DashBoard/DashBoardItems/summery/ui/siteActivety/siteActivityItem.dart';

import '../../../../../commonUi/commonColors.dart';
import '../../../../../commonUi/myTextStyle.dart';

class SummerySiteActivety extends StatefulWidget {
  const SummerySiteActivety({super.key});

  @override
  State<SummerySiteActivety> createState() => _SummerySiteActivetyState();
}

class _SummerySiteActivetyState extends State<SummerySiteActivety> {
  @override
  Widget build(BuildContext context) {
    var heightDevice = MediaQuery.of(context).size.height;
    var widthDevice = MediaQuery.of(context).size.width;
    return Container(
      height: widthDevice < 1500 ? 430 : 536,
      width: widthDevice < 1500 ? 490 : 620,
      decoration: BoxDecoration(
        border: Border.all(color: const Color.fromARGB(45, 158, 158, 158)),
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
      ),
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            MyTextStyle(
              text: 'Site Activity',
              textColor: CommonColors().textGrey,
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              //color: Colors.amber,
              height: widthDevice < 1500 ? 362 : 468,
              width: widthDevice < 1500 ? 460 : 580,
              child: ListView.builder(
                  itemCount: siteActivity.length,
                  itemBuilder: (context, index) {
                    return SiteActivityItem(
                        activityName: siteActivity[index].activityName,
                        siteOverseerName: siteActivity[index].siteOverseerName,
                        siteRanking: siteActivity[index].siteRanking,
                        arrowUp: siteActivity[index].arrowUp);
                  }),
            )
          ],
        ),
      ),
    );
  }
}
