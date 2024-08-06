import 'package:flutter/material.dart';

import '../../../../commonUi/myTextStyle.dart';

class SummeryTopRow extends StatefulWidget {
  Function() ontap;
  SummeryTopRow({super.key, required this.ontap});

  @override
  State<SummeryTopRow> createState() => _SummeryTopRowState();
}

class _SummeryTopRowState extends State<SummeryTopRow> {
  @override
  Widget build(BuildContext context) {
    
    return Container(
      
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        mainAxisSize: MainAxisSize.max,
        children: [
          MyTextStyle(
            text: 'Reports',
            fontWeight: FontWeight.bold,
            fontSize: 20,
          ),
          TextButton.icon(
            onPressed: widget.ontap,
            icon: Icon(Icons.download_sharp, size: 18),
            label: Text('Download'),
            style: TextButton.styleFrom(
              foregroundColor: Colors.grey[800], // Text color
              padding: EdgeInsets.all(8.0),
              textStyle: TextStyle(
                fontSize: 16,
              ),
            ),
          )
        ],
      ),
    );
  }
}
