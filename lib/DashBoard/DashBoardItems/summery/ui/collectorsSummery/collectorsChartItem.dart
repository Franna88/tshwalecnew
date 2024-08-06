import 'package:flutter/material.dart';

class CollectorsChartItem extends StatefulWidget {
  final String collector;
  final double value;
  const CollectorsChartItem({super.key, required this.collector, required this.value});

  @override
  State<CollectorsChartItem> createState() => _CollectorsChartItemState();
}

class _CollectorsChartItemState extends State<CollectorsChartItem> {
  @override
  Widget build(BuildContext context) {
    var widthDevice = MediaQuery.of(context).size.width;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Column(
                    children: [
                      Container(
                        height: widthDevice < 1500 ? 331 : 431,
                        child: RotatedBox(
                          quarterTurns: 3,
                          child: LinearProgressIndicator(
                            borderRadius: BorderRadius.circular(10),
                            value: widget.value,
                            backgroundColor: const Color.fromARGB(66, 33, 149, 243),
                            valueColor: AlwaysStoppedAnimation<Color>(Colors.blue),
                            minHeight: 15,
                          ),
                        ),
                      ),
                      const SizedBox(height: 5,),
                      Text(widget.collector)
                    ],
                  ),
    );
  }
}