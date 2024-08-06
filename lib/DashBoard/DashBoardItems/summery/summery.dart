import 'package:flutter/material.dart';
import 'package:twalek/DashBoard/DashBoardItems/summery/ui/circularProgressGrid/circularProgressItem.dart';
import 'package:twalek/DashBoard/DashBoardItems/summery/ui/collectorsSummery/collectorsSummeryChart.dart';
import 'package:twalek/DashBoard/DashBoardItems/summery/ui/circularProgressGrid/summeryCircularProgress.dart';
import 'package:twalek/DashBoard/DashBoardItems/summery/ui/summeryDropDowns.dart';
import 'package:twalek/DashBoard/DashBoardItems/summery/ui/siteActivety/summerySiteActivity.dart';
import 'package:twalek/DashBoard/DashBoardItems/summery/ui/summeryTopRow.dart';
import 'package:twalek/DashBoard/DashBoardItems/summery/ui/vehicles/summeryVehicles.dart';
import 'package:twalek/DashBoard/DashBoardItems/summery/ui/vehicles/vehiclesItem.dart';
import 'package:twalek/commonUi/myTextStyle.dart';

class Summery extends StatefulWidget {
  const Summery({super.key});

  @override
  State<Summery> createState() => _SummeryState();
}

//Drop down list items
final List<String> projects = ['Brandvalei', 'test1', 'test2'];
final List<String> collectors = ['All', 'test1', 'test2'];
final List<String> poles = ['All', 'test1', 'test2'];

// Text edit conrtollers
final project = TextEditingController();
final collection = TextEditingController();
final pole = TextEditingController();

class _SummeryState extends State<Summery> {
  @override
  Widget build(BuildContext context) {
    var heightDevice = MediaQuery.of(context).size.height;
    var widthDevice = MediaQuery.of(context).size.width;

    return Padding(
      padding: const EdgeInsets.all(30),
      child: Container(
        width: widthDevice < 1500 ? widthDevice - 250 : widthDevice - 310,
        height: heightDevice,
        //color: Colors.amber,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SummeryTopRow(
                ontap: () {
                  //ADD DOWNLOAD BUTTON LOGIC
                },
              ),
              const SizedBox(
                height: 20,
              ),
              Divider(),
              const SizedBox(
                height: 15,
              ),
              Row(mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SummeryDropDowns(
                    prefixText: 'Project : ',
                    items: projects,
                    textfieldController: project,
                  ),
                  const SizedBox(
                    width: 15,
                  ),
                  SummeryDropDowns(
                    prefixText: 'Collector : ',
                    items: collectors,
                    textfieldController: collection,
                  ),
                  const SizedBox(
                    width: 15,
                  ),
                  SummeryDropDowns(
                    prefixText: 'Pole : ',
                    items: poles,
                    textfieldController: pole,
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SummeryCircularProgress(),
                  // ADD project name
                  const SizedBox( width: 20,),
                  CollectorsSummeryChart(projectName: '')
                ],
              ),
              const SizedBox(height: 30,),
              Row(mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SummeryVehicles(),
                  const SizedBox( width: 20,),
                  SummerySiteActivety()
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
