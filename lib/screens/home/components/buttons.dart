import 'package:flutter/material.dart';
import 'package:naumanaziz/screens/constants.dart';

import '../../responsive.dart';

class ButtonsWidget extends StatelessWidget {
  final bool ui;
  final bool net;
  final bool flutter;
  const ButtonsWidget(
      {super.key, required this.flutter, required this.net, required this.ui});

  @override
  Widget build(BuildContext context) {
    return Wrap(
      direction: Axis.horizontal,
      spacing: 20.0,
      runSpacing: 20.0,
      alignment: WrapAlignment.center,
      children: [
        myButton(() {}, "UI/UX", ui, context),
        myButton(() {}, ".NET Development", net, context),
        //myButton(() {}, "SQL", false, context),
        myButton(() {}, "Flutter", flutter, context),
        //myButton(() {}, "Oracle", false, context),
      ],
    );
  }
}

Widget myButton(tap, text, selected, context) {
  return GestureDetector(
    onTap: tap,
    child: Container(
        width: Responsive.isDesktop(context) ? 160 : 120,
        height: Responsive.isDesktop(context) ? 50 : 40,
        decoration: BoxDecoration(
            color: whiteColor,
            border: Border.all(
                color: selected
                    ? const Color(0xFF504DEE)
                    : const Color(0xFF19191C),
                width: 2)),
        child: Center(
          child: Text(
            text,
            style: TextStyle(
                fontFamily: "PoppinsLight",
                color: selected
                    ? const Color(0xFF504DEE)
                    : const Color(0xFF19191C),
                fontSize: Responsive.isDesktop(context) ? 14 : 12,
                fontWeight: FontWeight.w600),
          ),
        )),
  );
}
