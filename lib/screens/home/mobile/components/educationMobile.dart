import 'dart:developer';

import 'package:delayed_display/delayed_display.dart';
import 'package:flutter/material.dart';
import 'package:naumanaziz/screens/constants.dart';

class EducationMobile extends StatefulWidget {
  const EducationMobile({Key? key}) : super(key: key);

  @override
  _Education createState() => _Education();
}

class _Education extends State<EducationMobile> {
  bool edu1 = false;
  bool edu2 = false;
  bool edu3 = false;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      color: whiteColor,
      // height: MediaQuery.of(context).size.height * 0.75,
      padding: const EdgeInsets.only(top: 20, bottom: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              const SizedBox(width: 30),
              Container(
                width: 4,
                height: 20,
                color: primaryColor,
              ),
              const Text(
                " Education",
                style: TextStyle(
                    fontFamily: urbanist,
                    fontSize: 24,
                    fontWeight: FontWeight.w700,
                    color: blackColor),
              ),
            ],
          ),
          DelayedDisplay(
            delay: const Duration(milliseconds: 2000),
            child: Padding(
              padding: const EdgeInsets.only(left: 30, top: 50, right: 30),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    padding: const EdgeInsets.only(
                        left: 24, right: 24, top: 20, bottom: 20),
                    //  width: MediaQuery.of(context).size.width * 0.87,
                    color: const Color(0xffDEEFE4),
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              "Master of Computer\nSciences",
                              style: TextStyle(
                                  fontFamily: urbanist,
                                  fontSize: 20,
                                  fontWeight: FontWeight.w700,
                                  color: blackColor),
                            ),
                          ),
                          SizedBox(
                            height: 25,
                          ),
                          Divider(
                            height: 4,
                            color: blackColor,
                          ),
                          SizedBox(
                            height: 25,
                          ),
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              "My Master's in Computer Science from Bahauddin Zakariya University in 2007 was a turning point in my career. The knowledge and skills I gained have been instrumental in my professional growth and have opened up many opportunities for me.",
                              style: TextStyle(
                                  fontFamily: poppinsLight,
                                  fontSize: 17,
                                  fontWeight: FontWeight.w400,
                                  color: blackColor),
                            ),
                          ),
                        ]),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Container(
                    padding: const EdgeInsets.only(
                      left: 24,
                      right: 24,
                      top: 20,
                      bottom: 20,
                    ),
                    // width: MediaQuery.of(context).size.width * 0.8,
                    color: const Color(0xffF3F3D7),
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              "Master of Science in\nComputer Science (MSCS)",
                              style: TextStyle(
                                  fontFamily: urbanist,
                                  fontSize: 20,
                                  fontWeight: FontWeight.w700,
                                  color: blackColor),
                            ),
                          ),
                          SizedBox(
                            height: 25,
                          ),
                          Divider(
                            height: 4,
                            color: blackColor,
                          ),
                          SizedBox(
                            height: 25,
                          ),
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              "I am proud to say that I have completed my Master of Science in Computer Science from Superior University. It was a challenging and rewarding experience that has prepared me well for my career in the field.",
                              style: TextStyle(
                                  fontFamily: poppinsLight,
                                  fontSize: 17,
                                  fontWeight: FontWeight.w400,
                                  color: blackColor),
                            ),
                          ),
                        ]),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Container(
                    padding: const EdgeInsets.only(
                        left: 24, right: 24, top: 20, bottom: 20),
                    //  width: MediaQuery.of(context).size.width * 0.8,
                    color: const Color(0xffEFDEEE),
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              "PHD Scholar",
                              style: TextStyle(
                                  fontFamily: urbanist,
                                  fontSize: 20,
                                  fontWeight: FontWeight.w700,
                                  color: blackColor),
                            ),
                          ),
                          SizedBox(
                            height: 25,
                          ),
                          Divider(
                            height: 4,
                            color: blackColor,
                          ),
                          SizedBox(
                            height: 25,
                          ),
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              "I am currently pursuing my Ph.D. in Computer Science, which is an exciting and challenging journey that I am proud to be a part of. The research and knowledge I am gaining will have a long-term impact on my career and in the field of computer science.",
                              style: TextStyle(
                                  fontFamily: poppinsLight,
                                  fontSize: 17,
                                  fontWeight: FontWeight.w400,
                                  color: blackColor),
                            ),
                          ),
                        ]),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }

  onEntered(bool bool) {
    if (bool) {
      setState(() {
        edu1 = true;
      });
    } else {
      setState(() {
        edu1 = false;
      });
    }
  }

  onEntered1(bool bool) {
    if (bool) {
      setState(() {
        edu2 = true;
      });
    } else {
      setState(() {
        edu2 = false;
      });
    }
  }

  onEntered2(bool bool) {
    if (bool) {
      setState(() {
        edu3 = true;
      });
    } else {
      setState(() {
        edu3 = false;
      });
    }
  }
}
