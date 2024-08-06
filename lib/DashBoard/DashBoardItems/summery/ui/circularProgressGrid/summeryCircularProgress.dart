import 'package:flutter/material.dart';
import 'package:twalek/DashBoard/DashBoardItems/summery/ui/circularProgressGrid/circularProgressItem.dart';

import '../../models/circularProgressModel.dart';

class SummeryCircularProgress extends StatefulWidget {
  const SummeryCircularProgress({super.key});

  @override
  State<SummeryCircularProgress> createState() =>
      _SummeryCircularProgressState();
}

class _SummeryCircularProgressState extends State<SummeryCircularProgress> {
  @override
  Widget build(BuildContext context) {
    var heightDevice = MediaQuery.of(context).size.height;
    var widthDevice = MediaQuery.of(context).size.width;

    return Container(
      //color: Colors.amber,
      height: widthDevice < 1500 ? 424 :  530,
      width: widthDevice < 1500 ? 490 : 620,
      child: GridView.builder(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3,
              crossAxisSpacing: 8,
              mainAxisSpacing: 8,
              childAspectRatio:  1.6,
            ),
            itemCount: items.length,
            itemBuilder: (context, index) {
              final item = items[index];
              return CircularProgressItem(
                header: item.header,
                progress: item.progress,
                currentValue: item.currentValue,
                totalValue: item.totalValue,
              );
            },
          ),
    );
  }
}
