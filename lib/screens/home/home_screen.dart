// ignore_for_file: use_build_context_synchronously

import 'dart:developer';
import 'package:emailjs/emailjs.dart';
import 'package:flutter/material.dart';
import 'package:naumanaziz/screens/constants.dart';
import 'package:naumanaziz/screens/home/components/aboutMe.dart';
import 'package:naumanaziz/screens/home/components/certificates.dart';
import 'package:naumanaziz/screens/home/components/education.dart';
import 'package:naumanaziz/screens/home/components/getINTouch.dart';
import 'package:naumanaziz/screens/home/components/howcanihelp.dart';
import 'package:naumanaziz/screens/home/components/info.dart';
import 'package:naumanaziz/screens/home/components/projects.dart';
import 'package:naumanaziz/screens/home/components/tesstimonial.dart';
import 'package:naumanaziz/screens/home/mobile/components/InfoMobile.dart';
import 'package:naumanaziz/screens/home/mobile/components/aboutMeMobile.dart';
import 'package:naumanaziz/screens/home/mobile/components/certificatesMobile.dart';
import 'package:naumanaziz/screens/home/mobile/components/educationMobile.dart';
import 'package:naumanaziz/screens/home/mobile/components/getInTouch.dart';
import 'package:naumanaziz/screens/home/mobile/components/helpYouMobile.dart';
import 'package:naumanaziz/screens/home/mobile/components/projectsMobile.dart';
import 'package:naumanaziz/screens/home/mobile/components/testimonialsMobile.dart';
import 'package:naumanaziz/screens/responsive.dart';
import 'package:url_launcher/url_launcher.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);
  @override
  _HomeScreen createState() => _HomeScreen();
}

class _HomeScreen extends State<HomeScreen> {
  bool aboutcheck = false;
  bool servicecheck = false;
  bool projectscheck = false;
  bool reviewscheck = false;
  bool contactcheck = false;
  TextEditingController name = TextEditingController();
  TextEditingController email = TextEditingController();
  TextEditingController message = TextEditingController();
  final about = GlobalKey();
  final service = GlobalKey();
  final project = GlobalKey();
  final testimonials = GlobalKey();
  final contact = GlobalKey();
  Future scrollPointTestimonilas() async {
    final context = testimonials.currentContext!;
    await Scrollable.ensureVisible(context,
        duration: const Duration(seconds: 1));
  }

  Future scrollPointContact() async {
    final context = contact.currentContext!;
    await Scrollable.ensureVisible(context,
        duration: const Duration(seconds: 1));
  }

  Future scrollPointAbout() async {
    final context = about.currentContext!;
    await Scrollable.ensureVisible(context,
        duration: const Duration(seconds: 1));
  }

  Future scrollPointService() async {
    final context = service.currentContext!;
    await Scrollable.ensureVisible(context,
        duration: const Duration(seconds: 1));
  }

  Future scrollPointProjects() async {
    final context = project.currentContext!;
    await Scrollable.ensureVisible(context,
        duration: const Duration(seconds: 1));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Responsive.isDesktop(context)
          ? null
          : AppBar(
              elevation: 0,
              backgroundColor: whiteColor,
              leading: Builder(
                builder: (context) => IconButton(
                  onPressed: () {
                    Scaffold.of(context).openDrawer();
                  },
                  icon: const Icon(
                    Icons.menu,
                    color: primaryColor,
                  ),
                ),
              ),
              actions: [
                  GestureDetector(
                    onTap: (() {
                      //dialouge box
                      showAlertDialogHireMeMobile(context);
                    }),
                    child: Padding(
                      padding: const EdgeInsets.only(right: 10, top: 5),
                      child: Container(
                        color: blackColor,
                        width: 140,
                        height: 15,
                        child: const Center(
                          child: Text(
                            "Hire me!",
                            style: TextStyle(
                                fontFamily: poppinsLight,
                                fontSize: 15,
                                fontWeight: FontWeight.w600,
                                color: whiteColor),
                          ),
                        ),
                      ),
                    ),
                  ),
                ]),
      drawer: Drawer(
        backgroundColor: whiteColor,
        child: SafeArea(
          child: Column(
            children: [
              const SizedBox(
                height: 10,
              ),
              Image.asset(
                "assets/images/signature.png",
                width: 120,
                height: 30,
              ),
              // const Divider(
              //   color: primaryColor,
              //   thickness: 1,
              // ),
              const SizedBox(
                height: 30,
              ),
              Padding(
                padding: const EdgeInsets.all(10),
                child: InkWell(
                  onTap: () {
                    scrollPointAbout();
                    Navigator.pop(context);
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Text(
                        "About",
                        style: TextStyle(
                            fontFamily: poppinsLight,
                            fontSize: 18,
                            fontWeight: FontWeight.w400,
                            color: blackColor),
                      ),
                      Icon(
                        Icons.arrow_forward_ios,
                        color: primaryColor,
                        size: 16,
                      )
                    ],
                  ),
                ),
              ),
              // const Divider(
              //   color: primaryColor,
              //   thickness: 1,
              // ),
              Padding(
                padding: const EdgeInsets.all(10),
                child: InkWell(
                  onTap: () {
                    scrollPointService();
                    Navigator.pop(context);
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Text(
                        "Service",
                        style: TextStyle(
                            fontFamily: poppinsLight,
                            fontSize: 18,
                            fontWeight: FontWeight.w400,
                            color: blackColor),
                      ),
                      Icon(
                        Icons.arrow_forward_ios,
                        color: primaryColor,
                        size: 16,
                      )
                    ],
                  ),
                ),
              ),
              // const Divider(
              //   color: primaryColor,
              //   thickness: 1,
              // ),
              Padding(
                padding: const EdgeInsets.all(10),
                child: InkWell(
                  onTap: () {
                    scrollPointProjects();
                    Navigator.pop(context);
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Text(
                        "Projects",
                        style: TextStyle(
                            fontFamily: poppinsLight,
                            fontSize: 18,
                            fontWeight: FontWeight.w400,
                            color: blackColor),
                      ),
                      Icon(
                        Icons.arrow_forward_ios,
                        color: primaryColor,
                        size: 16,
                      )
                    ],
                  ),
                ),
              ),
              // const Divider(
              //   color: primaryColor,
              //   thickness: 1,
              // ),
              Padding(
                padding: const EdgeInsets.all(10),
                child: InkWell(
                  onTap: () {
                    scrollPointTestimonilas();
                    Navigator.pop(context);
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Text(
                        "Reviews",
                        style: TextStyle(
                            fontFamily: poppinsLight,
                            fontSize: 18,
                            fontWeight: FontWeight.w400,
                            color: blackColor),
                      ),
                      Icon(
                        Icons.arrow_forward_ios,
                        color: primaryColor,
                        size: 16,
                      )
                    ],
                  ),
                ),
              ),
              // const Divider(
              //   color: primaryColor,
              //   thickness: 1,
              // ),
              Padding(
                padding: const EdgeInsets.all(10),
                child: InkWell(
                  onTap: () {
                    scrollPointContact();
                    Navigator.pop(context);
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Text(
                        "Contact",
                        style: TextStyle(
                            fontFamily: poppinsLight,
                            fontSize: 18,
                            fontWeight: FontWeight.w400,
                            color: blackColor),
                      ),
                      Icon(
                        Icons.arrow_forward_ios,
                        color: primaryColor,
                        size: 16,
                      )
                    ],
                  ),
                ),
              ),
              // const Divider(
              //   color: primaryColor,
              //   thickness: 1,
              // ),
            ],
          ),
        ),
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage(Responsive.isDesktop(context)
                    ? "assets/images/animated.png"
                    : "assets/images/SE.png"),
                fit: BoxFit.cover)),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              //appbar for
              if (Responsive.isDesktop(context)) ...[
                Container(
                  color: whiteColor,
                  height: 37,
                ),
                Container(
                  color: whiteColor,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const Spacer(
                        flex: 1,
                      ),
                      Image.asset(
                        "assets/images/signature.png",
                        width: 147,
                        height: 37,
                      ),
                      const Spacer(
                        flex: 5,
                      ),
                      // ignore: avoid_unnecessary_containers
                      Row(
                        children: [
                          InkWell(
                            onTap: () {
                              scrollPointAbout();
                            },
                            child: MouseRegion(
                              onEnter: (event) {
                                onEntered(true);
                              },
                              onExit: (event) {
                                onEntered(false);
                              },
                              child: aboutcheck
                                  ? const Text(
                                      "About",
                                      style: TextStyle(
                                          fontFamily: poppinsLight,
                                          fontSize: 18,
                                          fontWeight: FontWeight.w900,
                                          color: primaryColor),
                                    )
                                  : const Text(
                                      "About",
                                      style: TextStyle(
                                          fontFamily: poppinsLight,
                                          fontSize: 18,
                                          fontWeight: FontWeight.w400,
                                          color: blackColor),
                                    ),
                            ),
                          ),
                          const SizedBox(
                            width: 44,
                          ),
                          InkWell(
                              onTap: () {
                                scrollPointService();
                              },
                              child: MouseRegion(
                                onEnter: (event) {
                                  onEntered1(true);
                                },
                                onExit: (event) {
                                  onEntered1(false);
                                },
                                child: servicecheck
                                    ? const Text(
                                        "Service",
                                        style: TextStyle(
                                            fontFamily: poppinsLight,
                                            fontSize: 18,
                                            fontWeight: FontWeight.w900,
                                            color: primaryColor),
                                      )
                                    : const Text(
                                        "Service",
                                        style: TextStyle(
                                            fontFamily: poppinsLight,
                                            fontSize: 18,
                                            fontWeight: FontWeight.w400,
                                            color: blackColor),
                                      ),
                              )),
                          const SizedBox(
                            width: 44,
                          ),
                          InkWell(
                            onTap: () {
                              scrollPointProjects();
                            },
                            child: MouseRegion(
                              onEnter: (event) {
                                onEntered2(true);
                              },
                              onExit: (event) {
                                onEntered2(false);
                              },
                              child: projectscheck
                                  ? const Text(
                                      "Projects",
                                      style: TextStyle(
                                          fontFamily: poppinsLight,
                                          fontSize: 18,
                                          fontWeight: FontWeight.w900,
                                          color: primaryColor),
                                    )
                                  : const Text(
                                      "Projects",
                                      style: TextStyle(
                                          fontFamily: poppinsLight,
                                          fontSize: 18,
                                          fontWeight: FontWeight.w400,
                                          color: blackColor),
                                    ),
                            ),
                          ),
                          const SizedBox(
                            width: 44,
                          ),
                          InkWell(
                            onTap: () {
                              scrollPointTestimonilas();
                            },
                            child: MouseRegion(
                              onEnter: (event) {
                                onEntered3(true);
                              },
                              onExit: (event) {
                                onEntered3(false);
                              },
                              child: reviewscheck
                                  ? const Text(
                                      "Reviews",
                                      style: TextStyle(
                                          fontFamily: poppinsLight,
                                          fontSize: 18,
                                          fontWeight: FontWeight.w900,
                                          color: primaryColor),
                                    )
                                  : const Text(
                                      "Reviews",
                                      style: TextStyle(
                                          fontFamily: poppinsLight,
                                          fontSize: 18,
                                          fontWeight: FontWeight.w400,
                                          color: blackColor),
                                    ),
                            ),
                          ),
                          const SizedBox(
                            width: 44,
                          ),
                          InkWell(
                            onTap: () {
                              scrollPointContact();
                            },
                            child: MouseRegion(
                              onEnter: (event) {
                                onEntered4(true);
                              },
                              onExit: (event) {
                                onEntered4(false);
                              },
                              child: contactcheck
                                  ? const Text(
                                      "Contact",
                                      style: TextStyle(
                                          fontFamily: poppinsLight,
                                          fontSize: 18,
                                          fontWeight: FontWeight.w900,
                                          color: primaryColor),
                                    )
                                  : const Text(
                                      "Contact",
                                      style: TextStyle(
                                          fontFamily: poppinsLight,
                                          fontSize: 18,
                                          fontWeight: FontWeight.w400,
                                          color: blackColor),
                                    ),
                            ),
                          ),
                        ],
                      ),
                      const Spacer(
                        flex: 5,
                      ),
                      InkWell(
                        onTap: (() {
                          //dialouge box
                          showAlertDialogHireMe(context);
                        }),
                        child: Container(
                          color: blackColor,
                          width: 180,
                          height: 40,
                          child: const Center(
                            child: Text(
                              "Hire me!",
                              style: TextStyle(
                                  fontFamily: poppinsLight,
                                  fontSize: 18,
                                  fontWeight: FontWeight.w600,
                                  color: whiteColor),
                            ),
                          ),
                        ),
                      ),
                      const Spacer(
                        flex: 1,
                      ),
                    ],
                  ),
                ),
                const Info(),
                //howcanihelpyou
                Container(key: service, child: const HowCanIhELP()),
                Container(
                  height: 300,
                  color: Colors.transparent,
                ),
                //about me
                GestureDetector(key: about, child: const AboutMe()),
                //education
                const Education(),
                //certificates
                Container(color: whiteColor, child: const Certificates()),
                //projects
                Container(key: project, child: const Projects()),
                //testimionials
                Container(key: testimonials, child: const Testinomials()),
                //get in touch
                Container(key: contact, child: const GetinTouch()),
              ] else ...[
                const InfoMobile(),
                Container(key: service, child: const HowCanMobile()),
                Container(
                  height: 200,
                  color: Colors.transparent,
                ),
                Container(key: about, child: const AboutMeMobile()),
                //education
                const EducationMobile(),
                //certifictates
                const CertificatesMobile(),
                Container(key: project, child: const ProjectsMobile()),
                Container(key: testimonials, child: const TestinomialsMobile()),
                Container(key: contact, child: const GetinTouchMobile()),
              ],
            ],
          ),
        ),
      ),
    );
  }

  //hover
  onEntered(bool bool) {
    if (bool) {
      setState(() {
        aboutcheck = true;
      });
    } else {
      setState(() {
        aboutcheck = false;
      });
    }
  }

  onEntered1(bool bool) {
    if (bool) {
      setState(() {
        servicecheck = true;
      });
    } else {
      setState(() {
        servicecheck = false;
      });
    }
  }

  onEntered2(bool bool) {
    if (bool) {
      setState(() {
        projectscheck = true;
      });
    } else {
      setState(() {
        projectscheck = false;
      });
    }
  }

  onEntered3(bool bool) {
    if (bool) {
      setState(() {
        reviewscheck = true;
      });
    } else {
      setState(() {
        reviewscheck = false;
      });
    }
  }

  onEntered4(bool bool) {
    if (bool) {
      setState(() {
        contactcheck = true;
      });
    } else {
      setState(() {
        contactcheck = false;
      });
    }
  }

  showAlertDialogHireMe(BuildContext context) {
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
      backgroundColor: whiteColor,
      insetPadding: const EdgeInsets.all(40),
      shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(20.0))),
      content: Padding(
        padding: const EdgeInsets.only(left: 20.0, right: 20.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              //okButton
              Image.asset(
                "assets/images/hireMe.png",
                width: 161,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Text(
                    "Hey there!",
                    style: TextStyle(
                        fontFamily: poppinsLight,
                        fontSize: 40,
                        fontWeight: FontWeight.bold,
                        color: blackColor),
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.5,
                    child: const Text(
                      "If you're ready to get started on your project, I'd love to hear all about your story. So don't hesitate to reach out write your name and  message here and let's get the ball rolling!",
                      style: TextStyle(
                          fontFamily: urbanist,
                          fontSize: 18,
                          fontWeight: FontWeight.w500,
                          color: blackColor),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "Name",
                    style: TextStyle(
                        fontFamily: poppinsLight,
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                        color: blackColor),
                  ),
                  Container(
                    height: 50,
                    width: MediaQuery.of(context).size.width * 0.7,
                    padding: const EdgeInsets.only(left: 10),
                    decoration: BoxDecoration(
                        border: Border.all(width: 1, color: Colors.grey),
                        borderRadius: BorderRadius.circular(5)),
                    child: TextFormField(
                      decoration:
                          const InputDecoration(border: InputBorder.none),
                      controller: name,
                      style: const TextStyle(
                          fontFamily: poppinsLight,
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                          color: blackColor),
                    ),
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                  const Text(
                    "Email",
                    style: TextStyle(
                        fontFamily: poppinsLight,
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                        color: blackColor),
                  ),
                  Container(
                    height: 50,
                    width: MediaQuery.of(context).size.width * 0.7,
                    padding: const EdgeInsets.only(left: 10),
                    decoration: BoxDecoration(
                        border: Border.all(width: 1, color: Colors.grey),
                        borderRadius: BorderRadius.circular(5)),
                    child: TextFormField(
                      decoration:
                          const InputDecoration(border: InputBorder.none),
                      controller: email,
                      style: const TextStyle(
                          fontFamily: poppinsLight,
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                          color: blackColor),
                    ),
                  )
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "Message",
                    style: TextStyle(
                        fontFamily: poppinsLight,
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                        color: blackColor),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width * 0.7,
                    padding: const EdgeInsets.only(left: 10),
                    decoration: BoxDecoration(
                        border: Border.all(width: 1, color: Colors.grey),
                        borderRadius: BorderRadius.circular(5)),
                    child: TextFormField(
                      maxLines: 6,
                      decoration:
                          const InputDecoration(border: InputBorder.none),
                      controller: message,
                      style: const TextStyle(
                          fontFamily: poppinsLight,
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                          color: blackColor),
                    ),
                  )
                ],
              ),

              const SizedBox(
                height: 30,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20, right: 20),
                child: Wrap(
                  spacing: 20,
                  runSpacing: 20,
                  children: [
                    Container(
                        width: 300,
                        padding: const EdgeInsets.only(
                            left: 10, right: 10, top: 10, bottom: 10),
                        decoration: BoxDecoration(
                            border: Border.all(width: 1, color: Colors.grey),
                            borderRadius: BorderRadius.circular(5)),
                        child: Column(
                          children: [
                            Image.asset(
                              "assets/images/email.png",
                              width: 48,
                              height: 48,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: const [
                                Text(
                                  "Email",
                                  style: TextStyle(
                                      fontFamily: poppinsLight,
                                      fontSize: 18,
                                      fontWeight: FontWeight.w600,
                                      color: blackColor),
                                ),
                                Text(
                                  "na.pitafi@gmail.com",
                                  style: TextStyle(
                                      fontFamily: poppinsLight,
                                      fontSize: 16,
                                      fontWeight: FontWeight.w400,
                                      color: primaryColor),
                                ),
                              ],
                            )
                          ],
                        )),
                    GestureDetector(
                      onTap: () {
                        Uri url = Uri.parse(
                            "https://www.linkedin.com/in/nauman-aziz-pitafi-34994115/");
                        _launchInBrowser(url);
                      },
                      child: Container(
                          width: 300,
                          padding: const EdgeInsets.only(
                              left: 10, right: 10, top: 10, bottom: 10),
                          decoration: BoxDecoration(
                              border: Border.all(width: 1, color: Colors.grey),
                              borderRadius: BorderRadius.circular(5)),
                          child: Column(
                            children: [
                              Image.asset(
                                "assets/images/lindkin.png",
                                width: 48,
                                height: 48,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: const [
                                  Text(
                                    "LinkedIn",
                                    style: TextStyle(
                                        fontFamily: poppinsLight,
                                        fontSize: 18,
                                        fontWeight: FontWeight.w600,
                                        color: blackColor),
                                  ),
                                  Text(
                                    "Nauman Aziz",
                                    style: TextStyle(
                                        fontFamily: poppinsLight,
                                        fontSize: 16,
                                        fontWeight: FontWeight.w400,
                                        color: primaryColor),
                                  ),
                                ],
                              )
                            ],
                          )),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              GestureDetector(
                onTap: () async {
                  if (name.text.isNotEmpty &&
                      email.text.isNotEmpty &&
                      message.text.isNotEmpty) {
                    Map<String, dynamic> templateParams = {
                      'name': name.text,
                      'email': email.text,
                      'notes': message.text,
                    };

                    try {
                      await EmailJS.send(
                        'service_1oo06mw',
                        'template_ph52nx9',
                        templateParams,
                        const Options(
                          publicKey: 'otov4MchrvEKmvNhE',
                          privateKey: 'FOrWHZReSmPtxvazQqzFi',
                        ),
                      );
                      // ignore: prefer_const_declarations
                      final snackBar = const SnackBar(
                        duration: Duration(seconds: 2),
                        backgroundColor: Colors.green,
                        content: Text(
                          'Thank you for your information. I will contact you asap.',
                          style: TextStyle(
                              fontFamily: poppinsLight,
                              fontSize: 20,
                              color: whiteColor),
                        ),
                      );

                      // Find the ScaffoldMessenger in the widget tree
                      // and use it to show a SnackBar.
                      ScaffoldMessenger.of(context).showSnackBar(snackBar);
                      print('SUCCESS!');
                      Navigator.pop(context);
                    } catch (error) {
                      print(error.toString());
                    }
                  } else {
                    log("HERE");
                    if (email.text.isEmpty) {
                      email.text = "Enter email";
                    }
                    if (message.text.isEmpty) {
                      message.text = "Enter Something";
                    }
                    if (name.text.isEmpty) {
                      name.text = "Enter Name";
                    }
                  }
                },
                child: Container(
                  width: 150,
                  color: primaryColor,
                  padding: const EdgeInsets.only(left: 10, right: 10),
                  height: 50,
                  child: Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          "Send",
                          style: TextStyle(
                              fontFamily: poppinsLight,
                              fontSize: 20,
                              fontWeight: FontWeight.w600,
                              color: whiteColor),
                        ),
                        const SizedBox(width: 10),
                        Image.asset(
                          "assets/images/send.png",
                          width: 20,
                          height: 20,
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );

    // show the dialog
    showDialog(
      barrierDismissible: true,
      barrierColor: Colors.grey.withOpacity(0.7),
      context: context,
      builder: (BuildContext context) {
        return Padding(
          padding: const EdgeInsets.only(
              top: 40.0, bottom: 40, right: 100, left: 100),
          child: alert,
        );
      },
    );
  }

  showAlertDialogHireMeMobile(BuildContext context) {
    // Create AlertDialog
    AlertDialog alert = AlertDialog(
      shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(20.0))),
      backgroundColor: whiteColor,
      content: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  //okButton
                  Row(
                    children: [
                      Image.asset(
                        "assets/images/hireMe.png",
                        height: 95,
                        width: 119,
                      ),
                      const Text(
                        "Hey there!",
                        style: TextStyle(
                            fontFamily: poppinsLight,
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                            color: blackColor),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.6,
                        child: const Text(
                          "If you're ready to get started on your project, I'd love to hear all about your story. So don't hesitate to reach out write your name and  message here and let's get the ball rolling!",
                          style: TextStyle(
                            fontFamily: urbanist,
                            fontSize: 12,
                            fontWeight: FontWeight.w500,
                            color: blackColor,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        "Name",
                        style: TextStyle(
                            fontFamily: poppinsLight,
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            color: secondaryColor),
                      ),
                      Container(
                        height: 45,
                        width: MediaQuery.of(context).size.width * 0.6,
                        padding: const EdgeInsets.only(left: 10, top: 10),
                        decoration: BoxDecoration(
                            border: Border.all(
                                width: 1, color: const Color(0xFFE6E6E6)),
                            borderRadius: BorderRadius.circular(5)),
                        child: TextFormField(
                          textAlignVertical: TextAlignVertical.top,
                          decoration: const InputDecoration(
                              border: InputBorder.none,
                              contentPadding: EdgeInsets.only(bottom: 20)),
                          controller: name,
                          style: const TextStyle(
                              fontFamily: poppinsLight,
                              fontSize: 16,
                              fontWeight: FontWeight.w400,
                              color: blackColor),
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      const Text(
                        "Email",
                        style: TextStyle(
                            fontFamily: poppinsLight,
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            color: secondaryColor),
                      ),
                      Container(
                        height: 50,
                        width: MediaQuery.of(context).size.width * 0.6,
                        padding: const EdgeInsets.only(left: 10, top: 10),
                        decoration: BoxDecoration(
                            border: Border.all(
                                width: 1, color: const Color(0xFFE6E6E6)),
                            borderRadius: BorderRadius.circular(5)),
                        child: TextFormField(
                          textAlignVertical: TextAlignVertical.top,
                          decoration: const InputDecoration(
                              border: InputBorder.none,
                              contentPadding: EdgeInsets.only(bottom: 20)),
                          controller: email,
                          style: const TextStyle(
                              fontFamily: poppinsLight,
                              fontSize: 16,
                              fontWeight: FontWeight.w400,
                              color: blackColor),
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      const Text(
                        "Message",
                        style: TextStyle(
                            fontFamily: poppinsLight,
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            color: secondaryColor),
                      ),
                      Container(
                        //height: 185,
                        width: MediaQuery.of(context).size.width * 0.6,
                        padding: const EdgeInsets.only(left: 10, top: 10),
                        decoration: BoxDecoration(
                            border: Border.all(
                                width: 1, color: const Color(0xFFE6E6E6)),
                            borderRadius: BorderRadius.circular(5)),
                        child: TextFormField(
                          textAlignVertical: TextAlignVertical.top,
                          decoration: const InputDecoration(
                              border: InputBorder.none,
                              contentPadding: EdgeInsets.only(bottom: 20)),
                          controller: message,
                          style: const TextStyle(
                              fontFamily: poppinsLight,
                              fontSize: 16,
                              fontWeight: FontWeight.w400,
                              color: blackColor),
                        ),
                      )
                    ],
                  ),
                ],
              ),
              const SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Row(
                    children: [
                      Image.asset(
                        "assets/images/email.png",
                        width: 30,
                        height: 30,
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      GestureDetector(
                        onTap: () {
                          Uri url = Uri.parse(
                              "https://www.linkedin.com/in/nauman-aziz-pitafi-34994115/");
                          _launchInBrowser(url);
                        },
                        child: Image.asset(
                          "assets/images/lindkin.png",
                          width: 30,
                          height: 30,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    width: 30,
                  ),
                  GestureDetector(
                    onTap: () async {
                      if (name.text.isNotEmpty &&
                          email.text.isNotEmpty &&
                          message.text.isNotEmpty) {
                        Map<String, dynamic> templateParams = {
                          'name': name.text,
                          'email': email.text,
                          'notes': message.text,
                        };

                        try {
                          await EmailJS.send(
                            'service_1oo06mw',
                            'template_ph52nx9',
                            templateParams,
                            const Options(
                              publicKey: 'otov4MchrvEKmvNhE',
                              privateKey: 'FOrWHZReSmPtxvazQqzFi',
                            ),
                          );
                          // ignore: prefer_const_declarations
                          final snackBar = const SnackBar(
                            duration: Duration(seconds: 2),
                            backgroundColor: Colors.green,
                            content: Text(
                              'Thank you for your information. I will contact you asap.',
                              style: TextStyle(
                                  fontFamily: poppinsLight,
                                  fontSize: 20,
                                  color: whiteColor),
                            ),
                          );

                          // Find the ScaffoldMessenger in the widget tree
                          // and use it to show a SnackBar.
                          ScaffoldMessenger.of(context).showSnackBar(snackBar);
                          print('SUCCESS!');
                          Navigator.pop(context);
                        } catch (error) {
                          print(error.toString());
                        }
                      } else {
                        if (email.text.isEmpty) {
                          email.text = "Enter email";
                        }
                        if (message.text.isEmpty) {
                          message.text = "Enter Something";
                        }
                        if (name.text.isEmpty) {
                          name.text = "Enter Name";
                        }
                      }
                    },
                    child: Container(
                      color: primaryColor,
                      padding: const EdgeInsets.only(left: 10, right: 10),
                      height: 40,
                      width: 110,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text(
                            "Send",
                            style: TextStyle(
                                fontFamily: poppinsLight,
                                fontSize: 14,
                                fontWeight: FontWeight.w600,
                                color: whiteColor),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Image.asset(
                            "assets/images/send.png",
                            width: 10,
                            height: 10,
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 30,
              ),
            ],
          ),
        ),
      ),
    );

    // show the dialog
    showDialog(
      barrierDismissible: true,
      barrierColor: Colors.grey.withOpacity(0.7),
      context: context,
      builder: (BuildContext context) {
        return Padding(
          padding:
              const EdgeInsets.only(top: 10.0, bottom: 10, right: 20, left: 20),
          child: alert,
        );
      },
    );
  }

  showAlertDialog(BuildContext context, String image) {
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
      backgroundColor: whiteColor,
      content: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [okButton],
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              width: MediaQuery.of(context).size.width * 0.6,
              height: MediaQuery.of(context).size.height * 0.6,
              // height: MediaQuery.of(context).size.height,
              color: const Color(0xffF5F5F5),
              child: Image.asset(
                image,
                fit: BoxFit.contain,
              ),
            )
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

  Future<void> _launchInBrowser(Uri url) async {
    if (!await launchUrl(
      url,
      mode: LaunchMode.externalApplication,
    )) {
      throw 'Could not launch $url';
    }
  }
}
