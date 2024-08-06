import 'package:flutter/material.dart';

import '../../../../../commonUi/commonColors.dart';
import '../../../../../commonUi/myTextStyle.dart';

class SiteActivityItem extends StatefulWidget {
  final String activityName;
  final String siteOverseerName;
  final int siteRanking;
  final bool arrowUp;
  const SiteActivityItem(
      {super.key,
      required this.activityName,
      required this.siteOverseerName,
      required this.siteRanking,
      required this.arrowUp});

  @override
  State<SiteActivityItem> createState() => _SiteActivityItemState();
}

class _SiteActivityItemState extends State<SiteActivityItem> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: Row(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              MyTextStyle(
                text: widget.activityName,
                fontSize: 14,
                fontWeight: FontWeight.bold,
              ),
              const SizedBox(
                height: 8,
              ),
              MyTextStyle(
                text: widget.siteOverseerName,
                textColor: CommonColors().textGrey,
                fontSize: 12,
                fontWeight: FontWeight.w600,
              ),
            ],
          ),
          Spacer(),
          MyTextStyle(
            text: widget.siteRanking.toString(),
            fontWeight: FontWeight.bold,
          ),
          widget.arrowUp == true
              ? Icon(
                  Icons.arrow_drop_up,
                  color: Colors.green,
                  size: 40,
                )
              : Icon(
                  Icons.arrow_drop_down,
                  color: Colors.red,
                  size: 40,
                )
        ],
      ),
    );
  }
}
