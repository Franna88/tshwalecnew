import 'package:flutter/material.dart';
import 'package:twalek/DashBoard/DashBoardItems/summery/ui/collectorsSummery/collectorsChartItem.dart';
import 'package:twalek/DashBoard/DashBoardItems/summery/models/collectorsChartModel.dart';
import 'package:twalek/commonUi/myTextStyle.dart';

class CollectorsSummeryChart extends StatefulWidget {
  final String projectName;
  const CollectorsSummeryChart({super.key, required this.projectName});

  @override
  State<CollectorsSummeryChart> createState() => _CollectorsSummeryChartState();
}

class _CollectorsSummeryChartState extends State<CollectorsSummeryChart> {
  @override
  Widget build(BuildContext context) {
    var heightDevice = MediaQuery.of(context).size.height;
    var widthDevice = MediaQuery.of(context).size.width;
    return Container(
      height: widthDevice < 1500 ? 430 :  536,
      width: widthDevice < 1500 ? 490 : 620,
      decoration: BoxDecoration(
        border: Border.all(color: const Color.fromARGB(45, 158, 158, 158)),
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
      ),
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                MyTextStyle(text: 'Collectors Summery'),
                MyTextStyle(text: widget.projectName),
              ],
            ),
            Divider(),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: widthDevice < 1500 ? 335 : 435,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('100'),
                      Text('80'),
                      Text('50'),
                      Text('30'),
                      Text('0'),
                    ],
                  ),
                ),
                Container(
                  //color: Colors.amber,
                  height: widthDevice < 1500 ? 356 : 456,
                  width: widthDevice < 1500 ? 423 : 553,
                  child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: collectorList.length,
                      itemBuilder: (context, index) {
                        return CollectorsChartItem(
                            collector: collectorList[index].collector,
                            value: collectorList[index].progress);
                      }),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
