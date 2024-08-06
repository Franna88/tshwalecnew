import 'package:flutter/material.dart';
import 'package:twalek/commonUi/commonColors.dart';
import 'package:twalek/commonUi/myTextStyle.dart';

class SummeryDropDowns extends StatefulWidget {
  final String prefixText;
  final List<String> items;
  final TextEditingController textfieldController;

  const SummeryDropDowns({
    super.key,
    required this.items,
    required this.textfieldController,
    required this.prefixText,
  });

  @override
  State<SummeryDropDowns> createState() => _SummeryDropDownsState();
}

class _SummeryDropDownsState extends State<SummeryDropDowns> {
  @override
  Widget build(BuildContext context) {
    var widthDevice = MediaQuery.of(context).size.width;
    return Container(
      width: widthDevice / 3.9,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        color: Colors.white,
        border: Border.all(color: const Color.fromARGB(45, 158, 158, 158)),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Row(
          children: [
            MyTextStyle(
              text: widget.prefixText,
              textColor: CommonColors().textGrey,
            ),
            Expanded(
              child: DropdownButtonFormField<String>(
                dropdownColor: Colors.white,
                decoration: InputDecoration(
                  enabledBorder: InputBorder.none,
                  focusedBorder: InputBorder.none,
                ),
                value: widget.items.isNotEmpty ? widget.items[0] : null,
                onChanged: (value) {
                  setState(() {
                    widget.textfieldController.text = value!;
                  });
                },
                items: widget.items.map<DropdownMenuItem<String>>((value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value),
                  );
                }).toList(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
