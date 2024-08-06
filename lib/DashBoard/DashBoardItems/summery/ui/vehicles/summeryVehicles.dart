import 'package:flutter/material.dart';
import 'package:twalek/DashBoard/DashBoardItems/summery/models/vehiclesModel.dart';
import 'package:twalek/DashBoard/DashBoardItems/summery/ui/vehicles/vehiclesItem.dart';
import 'package:twalek/commonUi/commonColors.dart';
import 'package:twalek/commonUi/myTextStyle.dart';

class SummeryVehicles extends StatefulWidget {
  const SummeryVehicles({super.key});

  @override
  State<SummeryVehicles> createState() => _SummeryVehiclesState();
}

class _SummeryVehiclesState extends State<SummeryVehicles> {
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
        child: Column(crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            MyTextStyle(
              text: 'Vehicles',
              textColor: CommonColors().textGrey,
            ),
            const SizedBox(height: 10,),
            Container(
              //color: Colors.amber,
              height: widthDevice < 1500 ? 362 : 468,
              width: widthDevice < 1500 ? 460 : 580,
              child: ListView.builder(
                  itemCount: vehicles.length,
                  itemBuilder: (context, index) {
                    return VehiclesItem(
                        vehicleImage: vehicles[index].vehicleImage,
                        vehicleLicense: vehicles[index].vehicleLicense,
                        vehicleRanking: vehicles[index].vehicleRanking,
                        upArrow: vehicles[index].upArrow,
                        vehicleName: vehicles[index].vehicleName);
                  }),
            )
          ],
        ),
      ),
    );
  }
}
