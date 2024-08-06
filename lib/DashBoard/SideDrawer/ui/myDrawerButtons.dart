import 'package:flutter/material.dart';
import 'package:twalek/commonUi/commonColors.dart';
import 'package:twalek/commonUi/myTextStyle.dart';

class MyDrawerButtons extends StatelessWidget {
  final String buttonText;
  final IconData buttonIcon;
  final bool isActive;
  final VoidCallback onPressed;

  const MyDrawerButtons({
    super.key,
    required this.buttonText,
    required this.buttonIcon,
    required this.isActive,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4),
      child: GestureDetector(
        onTap: onPressed,
        child: Container(
          decoration: BoxDecoration(
            color: isActive ? CommonColors().purple : Colors.transparent,
            borderRadius: BorderRadius.circular(8),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 12),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Icon(
                  buttonIcon,
                  color: isActive ? Colors.white : CommonColors().textGrey,
                ),
                const SizedBox(
                  width: 15,
                ),
                MyTextStyle(
                  text: buttonText,
                  textColor: isActive ? Colors.white : CommonColors().textGrey,fontWeight: FontWeight.w600,
                  fontSize: 13,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
