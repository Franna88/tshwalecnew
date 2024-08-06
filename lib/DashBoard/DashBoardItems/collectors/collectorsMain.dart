import 'package:flutter/material.dart';
import 'package:twalek/DashBoard/DashBoardItems/collectors/ui/collectorTable.dart';
import 'package:twalek/DashBoard/DashBoardItems/collectors/ui/collectorsTopPage.dart';

class CollectorsMain extends StatefulWidget {
  const CollectorsMain({super.key});

  @override
  State<CollectorsMain> createState() => _CollectorsMainState();
}

class _CollectorsMainState extends State<CollectorsMain> {
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
              CollectorsTopPage(collectorName: 'test 1'),
              const SizedBox(height: 20,),
              CollectorTable(
                progress: 10,
                poles: [],
                collectorName: 'collectorName',
                items: const ['pole 1', 'Pole 2'],
                textfieldController: TextEditingController(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
