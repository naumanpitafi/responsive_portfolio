import 'dart:developer';
import 'dart:ui';

import 'package:delayed_display/delayed_display.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:naumanaziz/screens/constants.dart';

import 'buttons.dart';

class Projects extends StatefulWidget {
  const Projects({Key? key}) : super(key: key);

  @override
  _Projects createState() => _Projects();
}

class _Projects extends State<Projects> {
  bool p1 = false;
  bool p2 = false;
  bool p3 = false;
  bool p4 = false;
  bool p5 = false;
  bool p6 = false;
  bool p7 = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: MediaQuery.of(context).size.width * 0.1),
      decoration: const BoxDecoration(color: whiteColor),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            height: 40,
          ),
          Row(
            children: [
              Container(
                width: 4,
                height: 36,
                color: primaryColor,
              ),
              const Text(
                " My Projects",
                style: TextStyle(
                    fontFamily: urbanist,
                    fontSize: 48,
                    fontWeight: FontWeight.w700,
                    color: blackColor),
              ),
            ],
          ),
          const SizedBox(
            height: 40,
          ),
          // const ButtonsWidget(
          //   ui: false,
          //   flutter: false,
          //   net: false,
          // ),
          // const SizedBox(
          //   height: 20,
          // ),
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.8,
            child: StaggeredGrid.count(
              crossAxisCount: 4,
              mainAxisSpacing: 4,
              crossAxisSpacing: 4,
              children: [
                StaggeredGridTile.count(
                    crossAxisCellCount: 3,
                    mainAxisCellCount: 2,
                    child: GestureDetector(
                      child: MouseRegion(
                        onEnter: (event) => {onEntered(true)},
                        onExit: (event) => {onEntered(false)},
                        child: p1
                            ? Stack(
                                fit: StackFit.expand,
                                children: [
                                  InkWell(
                                    onHover: ((value) {
                                      log(value.toString());
                                      setState(() {
                                        p1 = value;
                                      });
                                    }),
                                    child: Image.asset('assets/images/p1.png',
                                        fit: BoxFit.cover),
                                  ),
                                  InkWell(
                                    onHover: ((value) {
                                      log(value.toString());
                                      setState(() {
                                        p1 = value;
                                      });
                                    }),
                                    child: ClipRRect(
                                      child: BackdropFilter(
                                        filter: ImageFilter.blur(
                                            sigmaX: 5, sigmaY: 5),
                                        child: Container(
                                          color: const Color(0xff8183F8)
                                              .withOpacity(0.2),
                                          alignment: Alignment.center,
                                          child: DelayedDisplay(
                                            delay: const Duration(
                                                milliseconds: 300),
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: [
                                                Text(
                                                  'United Insurance -'
                                                      .toUpperCase(),
                                                  style: const TextStyle(
                                                      fontFamily: urbanist,
                                                      color: Colors.black,
                                                      fontSize: 30,
                                                      fontWeight:
                                                          FontWeight.w800),
                                                ),
                                                Text(
                                                  ' Insurance Website'
                                                      .toUpperCase(),
                                                  style: const TextStyle(
                                                      fontFamily: urbanist,
                                                      color: Colors.black,
                                                      fontSize: 30,
                                                      fontWeight:
                                                          FontWeight.w400),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              )
                            : Image.asset(
                                "assets/images/p1.png",
                                fit: BoxFit.fill,
                              ),
                      ),
                    )),
                StaggeredGridTile.count(
                    crossAxisCellCount: 1,
                    mainAxisCellCount: 1,
                    child: MouseRegion(
                      onEnter: (event) => {onEnteredp2(true)},
                      onExit: (event) => {onEnteredp2(false)},
                      child: Padding(
                        padding: const EdgeInsets.only(left: 5.0, bottom: 5),
                        child: p2
                            ? Stack(
                                fit: StackFit.expand,
                                children: [
                                  Image.asset('assets/images/p2.png',
                                      fit: BoxFit.cover),
                                  ClipRRect(
                                    child: BackdropFilter(
                                      filter: ImageFilter.blur(
                                          sigmaX: 5, sigmaY: 5),
                                      child: Container(
                                        color: const Color(0xffECE7FF)
                                            .withOpacity(0.2),
                                        alignment: Alignment.center,
                                        child: DelayedDisplay(
                                          delay:
                                              const Duration(milliseconds: 300),
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              Text(
                                                'United Tracker -'
                                                    .toUpperCase(),
                                                style: const TextStyle(
                                                    fontFamily: urbanist,
                                                    color: Colors.black,
                                                    fontSize: 15,
                                                    fontWeight:
                                                        FontWeight.w800),
                                              ),
                                              Text(
                                                'Tracking App'.toUpperCase(),
                                                style: const TextStyle(
                                                    fontFamily: urbanist,
                                                    color: Colors.black,
                                                    fontSize: 15,
                                                    fontWeight:
                                                        FontWeight.w400),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              )
                            : Image.asset(
                                "assets/images/p2.png",
                                fit: BoxFit.fitHeight,
                              ),
                      ),
                    )),
                StaggeredGridTile.count(
                    crossAxisCellCount: 1,
                    mainAxisCellCount: 1,
                    child: MouseRegion(
                      onEnter: (event) => {onEnteredp3(true)},
                      onExit: (event) => {onEnteredp3(false)},
                      child: Padding(
                        padding: const EdgeInsets.only(left: 5.0),
                        child: p3
                            ? Stack(
                                fit: StackFit.expand,
                                children: [
                                  Image.asset('assets/images/p3.png',
                                      fit: BoxFit.cover),
                                  ClipRRect(
                                    child: BackdropFilter(
                                      filter: ImageFilter.blur(
                                          sigmaX: 5, sigmaY: 5),
                                      child: Container(
                                        color: const Color(0xff7AB5AB)
                                            .withOpacity(0.2),
                                        alignment: Alignment.center,
                                        child: DelayedDisplay(
                                          delay:
                                              const Duration(milliseconds: 300),
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              Text(
                                                'Human pay -'.toUpperCase(),
                                                style: const TextStyle(
                                                    fontFamily: urbanist,
                                                    color: Colors.black,
                                                    fontSize: 15,
                                                    fontWeight:
                                                        FontWeight.w800),
                                              ),
                                              Text(
                                                ' Salary app'.toUpperCase(),
                                                style: const TextStyle(
                                                    fontFamily: urbanist,
                                                    color: Colors.black,
                                                    fontSize: 15,
                                                    fontWeight:
                                                        FontWeight.w400),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              )
                            : Image.asset(
                                "assets/images/p3.png",
                                fit: BoxFit.fitHeight,
                              ),
                      ),
                    )),
                StaggeredGridTile.count(
                    crossAxisCellCount: 2,
                    mainAxisCellCount: 2,
                    child: GestureDetector(
                      onTap: () => showAlertDialog(context, yiwuImages),
                      child: MouseRegion(
                        onEnter: (event) => {onEnteredp4(true)},
                        onExit: (event) => {onEnteredp4(false)},
                        child: Padding(
                          padding:
                              const EdgeInsets.only(right: 10.0, top: 10.0),
                          child: p4
                              ? Stack(
                                  fit: StackFit.expand,
                                  children: [
                                    Image.asset('assets/images/p4.png',
                                        fit: BoxFit.cover),
                                    ClipRRect(
                                      child: BackdropFilter(
                                        filter: ImageFilter.blur(
                                            sigmaX: 5, sigmaY: 5),
                                        child: Container(
                                          color: const Color(0xffD42F24)
                                              .withOpacity(0.2),
                                          alignment: Alignment.center,
                                          child: DelayedDisplay(
                                            delay: const Duration(
                                                milliseconds: 300),
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: [
                                                Text(
                                                  'Yiwu Bazar - '.toUpperCase(),
                                                  style: const TextStyle(
                                                      fontFamily: urbanist,
                                                      color: Colors.black,
                                                      fontSize: 20,
                                                      fontWeight:
                                                          FontWeight.w800),
                                                ),
                                                Text(
                                                  'ecommerce store'
                                                      .toUpperCase(),
                                                  style: const TextStyle(
                                                      fontFamily: urbanist,
                                                      color: Colors.black,
                                                      fontSize: 20,
                                                      fontWeight:
                                                          FontWeight.w400),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                )
                              : Image.asset(
                                  "assets/images/p4.png",
                                  fit: BoxFit.fitHeight,
                                ),
                        ),
                      ),
                    )),
                StaggeredGridTile.count(
                    crossAxisCellCount: 2,
                    mainAxisCellCount: 2,
                    child: GestureDetector(
                      onTap: () => showAlertDialog(context, uicImages),
                      child: MouseRegion(
                        onEnter: (event) => {onEnteredp5(true)},
                        onExit: (event) => {onEnteredp5(false)},
                        child: Padding(
                          padding: const EdgeInsets.only(top: 10.0),
                          child: p5
                              ? Stack(
                                  fit: StackFit.expand,
                                  children: [
                                    Image.asset('assets/images/p5.png',
                                        fit: BoxFit.cover),
                                    ClipRRect(
                                      child: BackdropFilter(
                                        filter: ImageFilter.blur(
                                            sigmaX: 5, sigmaY: 5),
                                        child: Container(
                                          color: const Color(0xff081945)
                                              .withOpacity(0.2),
                                          alignment: Alignment.center,
                                          child: DelayedDisplay(
                                            delay: const Duration(
                                                milliseconds: 300),
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: [
                                                Text(
                                                  'united Insurance - '
                                                      .toUpperCase(),
                                                  style: const TextStyle(
                                                      fontFamily: urbanist,
                                                      color: Colors.black,
                                                      fontSize: 20,
                                                      fontWeight:
                                                          FontWeight.w800),
                                                ),
                                                Text(
                                                  'insurance app'.toUpperCase(),
                                                  style: const TextStyle(
                                                      fontFamily: urbanist,
                                                      color: Colors.black,
                                                      fontSize: 20,
                                                      fontWeight:
                                                          FontWeight.w400),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                )
                              : Image.asset(
                                  "assets/images/p5.png",
                                  fit: BoxFit.fitHeight,
                                ),
                        ),
                      ),
                    )),
                StaggeredGridTile.count(
                    crossAxisCellCount: 2,
                    mainAxisCellCount: 2,
                    child: GestureDetector(
                      onTap: () => showAlertDialog(context, reflactionImages),
                      child: MouseRegion(
                        onEnter: (event) => {onEnteredp6(true)},
                        onExit: (event) => {onEnteredp6(false)},
                        child: Padding(
                          padding: const EdgeInsets.only(top: 10.0),
                          child: p6
                              ? Stack(
                                  fit: StackFit.expand,
                                  children: [
                                    Image.asset('assets/images/p6.png',
                                        fit: BoxFit.cover),
                                    ClipRRect(
                                      child: BackdropFilter(
                                        filter: ImageFilter.blur(
                                            sigmaX: 5, sigmaY: 5),
                                        child: Container(
                                          color: const Color(0xffB8ADC5)
                                              .withOpacity(0.2),
                                          alignment: Alignment.center,
                                          child: DelayedDisplay(
                                            delay: const Duration(
                                                milliseconds: 300),
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: [
                                                Text(
                                                  'reflection - '.toUpperCase(),
                                                  style: const TextStyle(
                                                      fontFamily: urbanist,
                                                      color: Colors.black,
                                                      fontSize: 30,
                                                      fontWeight:
                                                          FontWeight.w800),
                                                ),
                                                Text(
                                                  'task management app'
                                                      .toUpperCase(),
                                                  style: const TextStyle(
                                                      fontFamily: urbanist,
                                                      color: Colors.black,
                                                      fontSize: 30,
                                                      fontWeight:
                                                          FontWeight.w400),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                )
                              : Image.asset(
                                  "assets/images/p6.png",
                                  fit: BoxFit.cover,
                                ),
                        ),
                      ),
                    )),
                StaggeredGridTile.count(
                    crossAxisCellCount: 2,
                    mainAxisCellCount: 2,
                    child: GestureDetector(
                      onTap: () {},
                      child: MouseRegion(
                        onEnter: (event) => {onEnteredp7(true)},
                        onExit: (event) => {onEnteredp7(false)},
                        child: Padding(
                          padding: const EdgeInsets.only(top: 10.0),
                          child: p7
                              ? Stack(
                                  fit: StackFit.expand,
                                  children: [
                                    Image.asset('assets/images/p7.png',
                                        fit: BoxFit.cover),
                                    ClipRRect(
                                      child: BackdropFilter(
                                        filter: ImageFilter.blur(
                                            sigmaX: 5, sigmaY: 5),
                                        child: Container(
                                          color: const Color(0xff86705A)
                                              .withOpacity(0.2),
                                          alignment: Alignment.center,
                                          child: DelayedDisplay(
                                            delay: const Duration(
                                                milliseconds: 300),
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: [
                                                Text(
                                                  'Takaful - '.toUpperCase(),
                                                  style: const TextStyle(
                                                      fontFamily: urbanist,
                                                      color: Colors.black,
                                                      fontSize: 30,
                                                      fontWeight:
                                                          FontWeight.w800),
                                                ),
                                                Text(
                                                  'Insurance Services'
                                                      .toUpperCase(),
                                                  style: const TextStyle(
                                                      fontFamily: urbanist,
                                                      color: Colors.black,
                                                      fontSize: 30,
                                                      fontWeight:
                                                          FontWeight.w400),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                )
                              : Image.asset(
                                  "assets/images/p7.png",
                                  fit: BoxFit.cover,
                                ),
                        ),
                      ),
                    )),
              ],
            ),
          )
        ],
      ),
    );
  }

  onEntered(bool bool) {
    if (bool) {
      setState(() {
        p1 = true;
      });
    } else {
      setState(() {
        p1 = false;
      });
    }
  }

  onEnteredp2(bool bool) {
    if (bool) {
      setState(() {
        p2 = true;
      });
    } else {
      setState(() {
        p2 = false;
      });
    }
  }

  onEnteredp3(bool bool) {
    if (bool) {
      setState(() {
        p3 = true;
      });
    } else {
      setState(() {
        p3 = false;
      });
    }
  }

  onEnteredp4(bool bool) {
    if (bool) {
      setState(() {
        p4 = true;
      });
    } else {
      setState(() {
        p4 = false;
      });
    }
  }

  onEnteredp5(bool bool) {
    if (bool) {
      setState(() {
        p5 = true;
      });
    } else {
      setState(() {
        p5 = false;
      });
    }
  }

  onEnteredp6(bool bool) {
    if (bool) {
      setState(() {
        p6 = true;
      });
    } else {
      setState(() {
        p6 = false;
      });
    }
  }

  onEnteredp7(bool bool) {
    if (bool) {
      setState(() {
        p7 = true;
      });
    } else {
      setState(() {
        p7 = false;
      });
    }
  }

  List yiwuImages = [
    "assets/images/ref1.png",
    "assets/images/ref2.png",
    "assets/images/ref3.png",
    "assets/images/ref4.png",
    "assets/images/ref5.png",
    "assets/images/ref6.png",
    "assets/images/ref7.png",
    "assets/images/ref8.png"
  ];
  List uicImages = [
    "assets/images/uic1.png",
    "assets/images/uic2.png",
    "assets/images/uic3.png",
    "assets/images/uic4.png",
    "assets/images/uic5.png",
    "assets/images/uic6.png",
    "assets/images/uic7.png",
    "assets/images/uic8.png",
  ];
  List reflactionImages = [
    "assets/images/reflection1.png",
    "assets/images/reflection2.png",
    "assets/images/reflection3.png",
    "assets/images/reflection4.png",
    "assets/images/reflection5.png",
  ];
  showAlertDialog(BuildContext context, List imagelist) {
    // Create button
    Widget okButton = GestureDetector(
      onTap: () {
        Navigator.pop(context);
      },
      child: const Icon(
        Icons.cancel,
        color: Colors.red,
      ),
    );

    // Create AlertDialog
    AlertDialog alert = AlertDialog(
      backgroundColor: const Color(0xffF5F5F5),
      content: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [okButton],
            ),
            const SizedBox(
              height: 20,
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.7,
              height: MediaQuery.of(context).size.height,
              child: ListView.builder(
                  scrollDirection: Axis.vertical,
                  itemCount: imagelist.length,
                  itemBuilder: (BuildContext context, int index) {
                    return Container(
                      width: MediaQuery.of(context).size.width * 0.7,
                      // height: MediaQuery.of(context).size.height,
                      color: const Color(0xffF5F5F5),
                      child: Image.asset(
                        imagelist[index].toString(),
                        fit: BoxFit.cover,
                      ),
                    );
                  }),
            ),
          ],
        ),
      ),
    );

    // show the dialog
    showDialog(
      barrierDismissible: false,
      barrierColor: Colors.grey.withOpacity(0.7),
      context: context,
      builder: (BuildContext context) {
        return alert;
      },
    );
  }
}
