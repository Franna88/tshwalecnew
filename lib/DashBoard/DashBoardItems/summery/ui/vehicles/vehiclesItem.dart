import 'package:flutter/material.dart';
import 'package:twalek/commonUi/commonColors.dart';
import 'package:twalek/commonUi/myTextStyle.dart';

class VehiclesItem extends StatefulWidget {
  final String vehicleImage;
  final String vehicleLicense;
  final int vehicleRanking;
  final bool upArrow;
  final String vehicleName;
  const VehiclesItem(
      {super.key,
      required this.vehicleImage,
      required this.vehicleLicense,
      required this.vehicleRanking,
      required this.upArrow,
      required this.vehicleName});

  @override
  State<VehiclesItem> createState() => _VehiclesItemState();
}

class _VehiclesItemState extends State<VehiclesItem> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: Row(
        children: [
          CircleAvatar(
            backgroundColor: CommonColors().textGrey,
            backgroundImage: AssetImage(widget.vehicleImage),
          ),
          const SizedBox(
            width: 10,
          ),
          Column(crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              MyTextStyle(
                text: widget.vehicleName,
                fontSize: 14,
                fontWeight: FontWeight.bold,
              ),
              const SizedBox(
                height: 8,
              ),
              MyTextStyle(
                text: widget.vehicleLicense,
                textColor: CommonColors().textGrey,
                fontSize: 12,
                fontWeight: FontWeight.w600,
              ),
            ],
          ),
          Spacer(),
          MyTextStyle(text: widget.vehicleRanking.toString(), fontWeight: FontWeight.bold,),
          widget.upArrow == true
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
