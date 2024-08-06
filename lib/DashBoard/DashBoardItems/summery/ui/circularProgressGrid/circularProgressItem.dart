import 'package:flutter/material.dart';
import 'package:twalek/commonUi/commonColors.dart';
import 'package:twalek/commonUi/myTextStyle.dart';

class CircularProgressItem extends StatefulWidget {
  final String header;
  final double progress;
  final int currentValue;
  final int totalValue;

  const CircularProgressItem({
    super.key,
    required this.header,
    required this.progress,
    required this.currentValue,
    required this.totalValue,
  });

  @override
  State<CircularProgressItem> createState() => _CircularProgressItemState();
}

class _CircularProgressItemState extends State<CircularProgressItem> {
  @override
  Widget build(BuildContext context) {
    var widthDevice = MediaQuery.of(context).size.width;
    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: const Color.fromARGB(45, 158, 158, 158)),
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
      ),
      child: Padding(
        padding: EdgeInsets.all(widthDevice < 1500 ? 10 : 15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            MyTextStyle(
              text: widget.header,
            ),
            Spacer(),

            // TO DO determine percentage amount,
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text.rich(
                  TextSpan(
                    children: [
                      TextSpan(
                          text: '${widget.currentValue}',
                          style: TextStyle(
                              fontSize: widthDevice < 1500 ? 17 : 20, fontWeight: FontWeight.bold)),
                      TextSpan(
                          text: '/\n${widget.totalValue}',
                          style: TextStyle(
                              fontSize: widthDevice < 1500 ? 16 : 19,
                              fontWeight: FontWeight.bold,
                              color: CommonColors().textGrey)),
                    ],
                  ),
                ),
                Stack(
                  alignment: Alignment.center,
                  children: [
                    CustomPaint(
                      size: widthDevice < 1500 ? Size(45, 45) : Size(70, 70),
                      painter: CircularProgressPainter(
                        screenWidth: widthDevice,
                        backgroundColor: Color(0xFFF2B4A9),
                        progressColor: Color(0xFFE66D57),
                        progress: widget.progress / 100,
                      ),
                    ),
                    Text(
                      '${widget.progress.toStringAsFixed(1)}%',
                      style: TextStyle(
                          fontSize: widthDevice < 1500 ? 12 : 14, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class CircularProgressPainter extends CustomPainter {
  final Color backgroundColor;
  final Color progressColor;
  final double progress;
  final double screenWidth;

  CircularProgressPainter({
    required this.backgroundColor,
    required this.progressColor,
    required this.progress,
    required this.screenWidth,
  });

  @override
  void paint(Canvas canvas, Size size) {
    double strokeWidth = screenWidth < 1500 ? 7 : 10;
    Paint backgroundPaint = Paint()
      ..color = backgroundColor
      ..style = PaintingStyle.stroke
      ..strokeWidth = strokeWidth
      ..strokeCap = StrokeCap.round;

    Paint progressPaint = Paint()
      ..color = progressColor
      ..style = PaintingStyle.stroke
      ..strokeWidth = strokeWidth
      ..strokeCap = StrokeCap.round;

    double radius = size.width / 2;
    Offset center = Offset(size.width / 2, size.height / 2);
    canvas.drawCircle(center, radius, backgroundPaint);

    double arcAngle = 2 * 3.1 * progress;
    canvas.drawArc(Rect.fromCircle(center: center, radius: radius), -3.1 / 2, arcAngle, false, progressPaint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
