import 'package:flutter/material.dart';
import 'package:twalek/commonUi/commonColors.dart';
import 'package:twalek/commonUi/myTextStyle.dart';

//Top table cell row widget ==

class TableHeaderWidget extends StatelessWidget {
  final String header;
  const TableHeaderWidget({super.key, required this.header});

  @override
  Widget build(BuildContext context) {
    var widthDevice = MediaQuery.of(context).size.width;
    return TableCell(
      verticalAlignment: TableCellVerticalAlignment.middle,
      child: Container(
        //color: Colors.amber,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: MyTextStyle(
            text: header,
            fontSize: widthDevice < 1500 ? 12 : 14,
            fontWeight: FontWeight.w600,
            textColor: CommonColors().tableRow,
          ),
        ),
      ),
    );
  }
}

// bottom Table cells

class MyTableCell extends StatelessWidget {
  final List poles;
  const MyTableCell({super.key, required this.poles});

  @override
  Widget build(BuildContext context) {
    var widthDevice = MediaQuery.of(context).size.width;
    return TableCell(
      verticalAlignment: TableCellVerticalAlignment.middle,
      child: Padding(
        padding: EdgeInsets.all(8),
        child: Text(
          poles.toString(),
          style: TextStyle(
              fontSize: widthDevice < 1500 ? 12 : 14,
              fontWeight: FontWeight.w600,
              color: CommonColors().purple),
        ),
      ),
    );
  }
}

// Table Display ==

class CollectorTable extends StatefulWidget {
  final List<String> items;
  final int progress;
  final TextEditingController textfieldController;
  final String collectorName;
  final List poles;
  const CollectorTable(
      {super.key,
      required this.progress,
      required this.collectorName,
      required this.items,
      required this.textfieldController,
      required this.poles});

  @override
  State<CollectorTable> createState() => _CollectorTableState();
}

class _CollectorTableState extends State<CollectorTable> {
  @override
  Widget build(BuildContext context) {
    var heightDevice = MediaQuery.of(context).size.height;
    var widthDevice = MediaQuery.of(context).size.width;
    return Container(
      width: widthDevice < 1500 ? widthDevice - 250 : widthDevice - 310,
      // HEIGHT CAN BE REMOVED IF NEEDED
      height: heightDevice * 0.60,
      decoration: BoxDecoration(
        border: Border.all(color: const Color.fromARGB(45, 158, 158, 158)),
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(15),
            child: MyTextStyle(
              text: widget.collectorName,
              fontSize: 22,
              textColor: Color.fromRGBO(43, 54, 116, 1),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(5.0),
            child: Table(
              children: [
                TableRow(
                  decoration: BoxDecoration(
                    border: Border(
                      bottom: BorderSide(color: Colors.grey),
                    ),
                  ),
                  children: [
                    TableCell(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: DropdownButtonFormField<String>(
                          style: TextStyle(
                            fontSize: widthDevice < 1500 ? 12 : 14,
                            color: CommonColors().tableRow,
                            fontWeight: FontWeight.w600,
                          ),
                          dropdownColor: Colors.white,
                          decoration: InputDecoration(
                            hintText: 'Pole',
                            hintStyle:
                                TextStyle(fontSize: widthDevice < 1500 ? 12 : 14),
                            enabledBorder: InputBorder.none,
                            focusedBorder: InputBorder.none,
                          ),
                          value: widget.items.isNotEmpty ? widget.items[0] : null,
                          onChanged: (value) {
                            setState(() {
                              widget.textfieldController.text = value!;
                            });
                          },
                          items:
                              widget.items.map<DropdownMenuItem<String>>((value) {
                            return DropdownMenuItem<String>(
                              value: value,
                              child: Text(value),
                            );
                          }).toList(),
                        ),
                      ),
                    ),
                    TableHeaderWidget(header: 'Survey'),
                    TableHeaderWidget(header: 'Numbering'),
                    TableHeaderWidget(header: 'Evacuation'),
                    TableHeaderWidget(header: 'Install'),
                    TableHeaderWidget(header: 'Dressing'),
                    TableHeaderWidget(header: 'Earth Resist'),
                    TableHeaderWidget(header: 'ACSR'),
                    TableHeaderWidget(header: 'OPGW'),
                    TableHeaderWidget(header: 'Finalise'),
                    TableHeaderWidget(header: 'Quality Check'),
                  ],
                ),
                ...List.generate(
                  1,
                  (index) => TableRow(
                    decoration: BoxDecoration(
                      color: index % 2 == 0
                          ? Color(0xFFF8FAFF)
                          : Color.fromRGBO(174, 204, 236, 1),
                      border: Border(
                        bottom: BorderSide(
                          width: 1.5,
                          color: Color.fromARGB(255, 233, 232, 232),
                        ),
                      ),
                    ),
                    children: [

                     // TEST ROW DELETE AFTER
                    TableCell(
                        verticalAlignment: TableCellVerticalAlignment.middle,
                        child: Padding(
                          padding: EdgeInsets.all(8),
                          child: Text(
                            '12.Jan.2021',
                            style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w600,
                                color: CommonColors().purple),
                          ),
                        ),
                      ),
                     TableCell(
                        verticalAlignment: TableCellVerticalAlignment.middle,
                        child: Padding(
                          padding: EdgeInsets.all(8),
                          child: Text(
                            '12.Jan.2021',
                            style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w600,
                                color: CommonColors().purple),
                          ),
                        ),
                      ),
                     TableCell(
                        verticalAlignment: TableCellVerticalAlignment.middle,
                        child: Padding(
                          padding: EdgeInsets.all(8),
                          child: Text(
                            '12.Jan.2021',
                            style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w600,
                                color: CommonColors().purple),
                          ),
                        ),
                      ),
                      TableCell(
                        verticalAlignment: TableCellVerticalAlignment.middle,
                        child: Padding(
                          padding: EdgeInsets.all(8),
                          child: Text(
                            '12.Jan.2021',
                            style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w600,
                                color: CommonColors().purple),
                          ),
                        ),
                      ),
                      TableCell(
                        verticalAlignment: TableCellVerticalAlignment.middle,
                        child: Padding(
                          padding: EdgeInsets.all(8),
                          child: Text(
                            '12.Jan.2021',
                            style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w600,
                                color: CommonColors().purple),
                          ),
                        ),
                      ),
                      TableCell(
                        verticalAlignment: TableCellVerticalAlignment.middle,
                        child: Padding(
                          padding: EdgeInsets.all(8),
                          child: Text(
                            '12.Jan.2021',
                            style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w600,
                                color: CommonColors().purple),
                          ),
                        ),
                      ),
                      TableCell(
                        verticalAlignment: TableCellVerticalAlignment.middle,
                        child: Padding(
                          padding: EdgeInsets.all(8),
                          child: Text(
                            'POLE',
                            style: TextStyle(fontSize: 12),
                          ),
                        ),
                      ),
                      TableCell(
                        verticalAlignment: TableCellVerticalAlignment.middle,
                        child: Padding(
                          padding: EdgeInsets.all(8),
                          child: Text(
                            'POLE',
                            style: TextStyle(fontSize: 12),
                          ),
                        ),
                      ),
                      TableCell(
                        verticalAlignment: TableCellVerticalAlignment.middle,
                        child: Padding(
                          padding: EdgeInsets.all(8),
                          child: Text(
                            'POLE',
                            style: TextStyle(fontSize: 12),
                          ),
                        ),
                      ),
                      TableCell(
                        verticalAlignment: TableCellVerticalAlignment.middle,
                        child: Padding(
                          padding: EdgeInsets.all(8),
                          child: Text(
                            'POLE',
                            style: TextStyle(fontSize: 12),
                          ),
                        ),
                      ),

                      //END OF TEST ROW

                      //TO DO
            
                      /* MyTableCell(
                        poles: widget.poles[index]['Pole'],
                      ),
                      MyTableCell(
                        poles: widget.poles[index]['Survey'],
                      ),
                      MyTableCell(
                        poles: widget.poles[index]['Numbering'],
                      ),
                      MyTableCell(
                        poles: widget.poles[index]['Evacuation'],
                      ),
                      MyTableCell(
                        poles: widget.poles[index]['Install'],
                      ),
                      MyTableCell(
                        poles: widget.poles[index]['Dressing'],
                      ),
                      MyTableCell(
                        poles: widget.poles[index]['Earth Resist'],
                      ),
                      MyTableCell(
                        poles: widget.poles[index]['ACSR'],
                      ),
                      MyTableCell(
                        poles: widget.poles[index]['OPGW'],
                      ),
                      MyTableCell(
                        poles: widget.poles[index]['Finalise'],
                      ),*/
                      TableCell(
                        verticalAlignment: TableCellVerticalAlignment.middle,
                        child: Row(
                          children: [
                            Text(
                              '${widget.progress.toStringAsFixed(1)}%',
                              style: TextStyle(
                                  fontSize: widthDevice < 1500 ? 12 : 14,
                                  fontWeight: FontWeight.bold,
                                  color: CommonColors().purple),
                            ),
                            const SizedBox(
                              width: 5,
                            ),
                            SizedBox(
                              width: widthDevice < 1500
                                  ? widthDevice * 0.03
                                  : widthDevice * 0.04,
                              child: LinearProgressIndicator(
                                borderRadius: BorderRadius.circular(20),
                                minHeight: 10,
                                backgroundColor: Color.fromARGB(66, 37, 32, 129),
                                valueColor: AlwaysStoppedAnimation<Color>(
                                    Color.fromRGBO(67, 24, 255, 1)),
                                value: widget.progress / 100     
                               // value: widget.poles[index]['Quality Check'] / 100 // TO DO determine percentage amount,
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
