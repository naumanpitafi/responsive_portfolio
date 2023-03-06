import 'dart:developer';
import 'dart:ui';

import 'package:delayed_display/delayed_display.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:naumanaziz/screens/constants.dart';

import '../../components/buttons.dart';

class ProjectsMobile extends StatefulWidget {
  const ProjectsMobile({Key? key}) : super(key: key);

  @override
  _Projects createState() => _Projects();
}

class _Projects extends State<ProjectsMobile> {
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
      padding: const EdgeInsets.only(left: 30),
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
                height: 30,
                color: primaryColor,
              ),
              const Text(
                " My Projects",
                style: TextStyle(
                    fontFamily: urbanist,
                    fontSize: 24,
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
            width: MediaQuery.of(context).size.width * 0.9,
            child: StaggeredGrid.count(
              crossAxisCount: 4,
              mainAxisSpacing: 4,
              crossAxisSpacing: 4,
              children: [
                StaggeredGridTile.count(
                    crossAxisCellCount: 4,
                    mainAxisCellCount: 2,
                    child: InkWell(
                      onTap: () => showAlertDialog(context, myUICImages),
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
                                                      fontSize: 16,
                                                      fontWeight:
                                                          FontWeight.w800),
                                                ),
                                                Text(
                                                  ' Insurance Website'
                                                      .toUpperCase(),
                                                  style: const TextStyle(
                                                      fontFamily: urbanist,
                                                      color: Colors.black,
                                                      fontSize: 16,
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
                    crossAxisCellCount: 2,
                    mainAxisCellCount: 2,
                    child: InkWell(
                      onTap: () => showAlertDialog(context, utsImages),
                      child: MouseRegion(
                        onEnter: (event) => {onEnteredp2(true)},
                        onExit: (event) => {onEnteredp2(false)},
                        child: Padding(
                          padding: const EdgeInsets.only(right: 10, top: 10),
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
                                            delay: const Duration(
                                                milliseconds: 300),
                                            child: Column(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: [
                                                Text(
                                                  'United Tracker'
                                                      .toUpperCase(),
                                                  style: const TextStyle(
                                                      fontFamily: urbanist,
                                                      color: Colors.black,
                                                      fontSize: 14,
                                                      fontWeight:
                                                          FontWeight.w800),
                                                ),
                                                const SizedBox(height: 10),
                                                Text(
                                                  'Tracking App'.toUpperCase(),
                                                  style: const TextStyle(
                                                      fontFamily: urbanist,
                                                      color: Colors.black,
                                                      fontSize: 14,
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
                      ),
                    )),
                StaggeredGridTile.count(
                    crossAxisCellCount: 2,
                    mainAxisCellCount: 2,
                    child: InkWell(
                      onTap: () => showAlertDialog(context, humanPay),
                      child: MouseRegion(
                        onEnter: (event) => {onEnteredp3(true)},
                        onExit: (event) => {onEnteredp3(false)},
                        child: Padding(
                          padding: const EdgeInsets.only(top: 10.0),
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
                                            delay: const Duration(
                                                milliseconds: 300),
                                            child: Column(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: [
                                                Text(
                                                  'Human pay'.toUpperCase(),
                                                  style: const TextStyle(
                                                      fontFamily: urbanist,
                                                      color: Colors.black,
                                                      fontSize: 14,
                                                      fontWeight:
                                                          FontWeight.w800),
                                                ),
                                                const SizedBox(height: 10),
                                                Text(
                                                  ' Salary app'.toUpperCase(),
                                                  style: const TextStyle(
                                                      fontFamily: urbanist,
                                                      color: Colors.black,
                                                      fontSize: 14,
                                                      fontWeight:
                                                          FontWeight.w400),
                                                  textAlign: TextAlign.center,
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
                      ),
                    )),
                StaggeredGridTile.count(
                    crossAxisCellCount: 2,
                    mainAxisCellCount: 2,
                    child: InkWell(
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
                                            child: Column(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: [
                                                Text(
                                                  'Yiwu Bazar'.toUpperCase(),
                                                  style: const TextStyle(
                                                      fontFamily: urbanist,
                                                      color: Colors.black,
                                                      fontSize: 14,
                                                      fontWeight:
                                                          FontWeight.w800),
                                                ),
                                                const SizedBox(height: 10),
                                                Text(
                                                  'ecommerce store'
                                                      .toUpperCase(),
                                                  style: const TextStyle(
                                                      fontFamily: urbanist,
                                                      color: Colors.black,
                                                      fontSize: 14,
                                                      fontWeight:
                                                          FontWeight.w400),
                                                  textAlign: TextAlign.center,
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
                    child: InkWell(
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
                                            child: Column(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: [
                                                Text(
                                                  'united Insurance'
                                                      .toUpperCase(),
                                                  style: const TextStyle(
                                                      fontFamily: urbanist,
                                                      color: Colors.black,
                                                      fontSize: 14,
                                                      fontWeight:
                                                          FontWeight.w800),
                                                ),
                                                const SizedBox(height: 10),
                                                Text(
                                                  'insurance app'.toUpperCase(),
                                                  style: const TextStyle(
                                                      fontFamily: urbanist,
                                                      color: Colors.black,
                                                      fontSize: 14,
                                                      fontWeight:
                                                          FontWeight.w400),
                                                  textAlign: TextAlign.center,
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
                    child: InkWell(
                      onTap: () => showAlertDialog(context, reflactionImages),
                      child: MouseRegion(
                        onEnter: (event) => {onEnteredp6(true)},
                        onExit: (event) => {onEnteredp6(false)},
                        child: Padding(
                          padding:
                              const EdgeInsets.only(right: 10.0, top: 10.0),
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
                                            child: Column(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: [
                                                Text(
                                                  'reflection'.toUpperCase(),
                                                  style: const TextStyle(
                                                      fontFamily: urbanist,
                                                      color: Colors.black,
                                                      fontSize: 14,
                                                      fontWeight:
                                                          FontWeight.w800),
                                                ),
                                                const SizedBox(height: 10),
                                                Text(
                                                  'task management app'
                                                      .toUpperCase(),
                                                  style: const TextStyle(
                                                      fontFamily: urbanist,
                                                      color: Colors.black,
                                                      fontSize: 14,
                                                      fontWeight:
                                                          FontWeight.w400),
                                                  textAlign: TextAlign.center,
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
                    child: InkWell(
                      onTap: () => showAlertDialog(context, tawasulImages),
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
                                            child: Column(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: [
                                                Text(
                                                  'Tawasul'.toUpperCase(),
                                                  style: const TextStyle(
                                                      fontFamily: urbanist,
                                                      color: Color.fromRGBO(
                                                          0, 0, 0, 1),
                                                      fontSize: 14,
                                                      fontWeight:
                                                          FontWeight.w800),
                                                ),
                                                const SizedBox(height: 10),
                                                Text(
                                                  'Insurance Services'
                                                      .toUpperCase(),
                                                  style: const TextStyle(
                                                      fontFamily: urbanist,
                                                      color: Colors.black,
                                                      fontSize: 14,
                                                      fontWeight:
                                                          FontWeight.w400),
                                                  textAlign: TextAlign.center,
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
    "assets/images/ref8.png",
    "assets/images/ref9.png"
  ];
  List utsImages = [
    "assets/images/uts1.png",
    "assets/images/uts2.png",
    "assets/images/uts3.png",
    "assets/images/uts4.png",
  ];

  List myUICImages = [
    "assets/images/myUIC1.png",
    "assets/images/myUIC2.png",
    "assets/images/myUIC3.png",
    "assets/images/myUIC4.png",
    "assets/images/myUIC5.png",
    "assets/images/myUIC6.png",
    "assets/images/myUIC7.png"
  ];

  List tawasulImages = [
    "assets/images/tawasul1.png",
    "assets/images/tawasul2.png",
    "assets/images/tawasul3.png",
    "assets/images/tawasul4.png",
    "assets/images/tawasul5.png",
    "assets/images/tawasul6.png",
    "assets/images/tawasul7.png",
    "assets/images/tawasul8.png",
    "assets/images/tawasul9.png",
    "assets/images/tawasul10.png",
    "assets/images/tawasul11.png"
  ];

  List humanPay = [
    "assets/images/hp1.png",
    "assets/images/hp2.png",
    "assets/images/hp3.png",
    "assets/images/hp4.png",
    "assets/images/hp5.png",
    "assets/images/hp6.png",
    "assets/images/hp7.png",
    "assets/images/hp8.png",
    "assets/images/hp9.png",
    "assets/images/hp10.png",
    "assets/images/hp11.png",
    "assets/images/hp12.png",
    "assets/images/hp13.png",
    "assets/images/hp14.png",
    "assets/images/hp15.png",
    "assets/images/hp16.png",
    "assets/images/hp17.png",
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
    "assets/images/uic9.png",
    "assets/images/uic10.png",
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
      barrierDismissible: true,
      barrierColor: Colors.grey.withOpacity(0.7),
      context: context,
      builder: (BuildContext context) {
        return alert;
      },
    );
  }
}
