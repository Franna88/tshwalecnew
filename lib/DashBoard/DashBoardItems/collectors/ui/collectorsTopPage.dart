import 'package:flutter/material.dart';
import 'package:twalek/commonUi/commonColors.dart';
import 'package:twalek/commonUi/myTextStyle.dart';

class CollectorsTopPage extends StatefulWidget {
  final String collectorName;
  const CollectorsTopPage({super.key, required this.collectorName});

  @override
  State<CollectorsTopPage> createState() => _CollectorsTopPageState();
}

class _CollectorsTopPageState extends State<CollectorsTopPage> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            MyTextStyle(text: '${widget.collectorName} / Collectors', textColor: CommonColors().tableRow, fontWeight: FontWeight.w600,),
            const SizedBox(height: 10,),
            MyTextStyle(
              text: 'Tables',
              textColor: Color.fromRGBO(43, 54, 116, 1),
              fontSize: 28,
              fontWeight: FontWeight.bold,
            ),
          ],
        ),
        Container(
           decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30), color: Colors.white),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              width: 220,
              height: 40,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30), color: CommonColors().pageColor1),
              child: Padding(
                padding: EdgeInsets.only(
                  left: 8,
                  right: 8,
                ),
                child: Center(
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SizedBox(width: 8),
                      Expanded(
                        child: TextField(
                          cursorColor: Colors.black,
                          decoration: InputDecoration(
                            contentPadding: EdgeInsets.only(bottom: 10),
                            hintText: 'Search',
                            border: InputBorder.none,
                            hintStyle: TextStyle(
                                color: CommonColors().tableRow, fontSize: 14),
                          ),
                        ),
                      ),
                      Icon(Icons.search, color: CommonColors().tableRow),
                    ],
                  ),
                ),
              ),
            ),
          ),
        )
      ],
    );
  }
}
