import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:naumanaziz/screens/constants.dart';
import 'package:scrollable_positioned_list/scrollable_positioned_list.dart';

class CertificatesMobile extends StatelessWidget {
  const CertificatesMobile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List certificates = [
      "assets/images/RedesignConcept.png",
      "assets/images/MobileApp.png",
      "assets/images/course02.png",
      "assets/images/Group232718.png",
      "assets/images/c5.png",
      "assets/images/c6.png"
    ];
    List certificatesOnli = [
      "assets/images/cert4.png",
      "assets/images/cert3.png",
      "assets/images/cert2.png",
      "assets/images/cert1.png",
      "assets/images/cert5.png",
      "assets/images/cert6.png"
    ];
    final ItemScrollController itemScrollController = ItemScrollController();
    Future scrollto() async {
      itemScrollController.scrollTo(
          index: 2, duration: const Duration(milliseconds: 500));
    }

    Future scrollback() async {
      itemScrollController.scrollTo(
          index: 0, duration: const Duration(milliseconds: 500));
    }

    return Container(
      //height: MediaQuery.of(context).size.width * 0.8,
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/images/certificates.png'),
          fit: BoxFit.cover,
        ),
      ),
      child: Column(
        children: [
          const SizedBox(height: 20),
          Row(
            children: [
              const SizedBox(width: 30),
              Container(
                width: 4,
                height: 20,
                color: primaryColor,
              ),
              const Text(
                " Certificates and Acheivements",
                style: TextStyle(
                    fontFamily: urbanist,
                    fontSize: 24,
                    fontWeight: FontWeight.w700,
                    color: blackColor),
              ),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              GestureDetector(
                onTap: () {
                  scrollback();
                },
                child: Image.asset(
                  "assets/images/left.png",
                  height: 40,
                  width: 40,
                ),
              ),
              const SizedBox(
                width: 20,
              ),
              SizedBox(
                  width: MediaQuery.of(context).size.width * 0.5,
                  height: 400,
                  child: ScrollablePositionedList.builder(
                    scrollDirection: Axis.horizontal,
                    itemScrollController: itemScrollController,
                    itemCount: certificates.length,
                    itemBuilder: (context, index) => GestureDetector(
                      onTap: () {
                        showAlertDialog(
                            context, certificatesOnli[index].toString());
                      },
                      child: Image.asset(
                        certificates[index].toString(),
                        width: 250,
                      ),
                    ),
                  )),
              const SizedBox(
                width: 20,
              ),
              RotatedBox(
                quarterTurns: 2,
                child: GestureDetector(
                  onTap: () {
                    scrollto();
                  },
                  child: Image.asset(
                    "assets/images/left.png",
                    height: 40,
                    width: 40,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  showAlertDialog(BuildContext context, String image) {
    // Create button
    Widget okButton = GestureDetector(
      onTap: () {
        Navigator.pop(context);
      },
      child: Icon(
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
}
