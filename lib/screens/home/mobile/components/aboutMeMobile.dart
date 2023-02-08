import 'package:flutter/material.dart';
import 'package:naumanaziz/screens/constants.dart';

class AboutMeMobile extends StatelessWidget {
  const AboutMeMobile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 30, right: 30),
      width: MediaQuery.of(context).size.width,
      color: whiteColor,
      height: 600,
      child: Column(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 60,
              ),
              Row(
                children: [
                  Container(
                    width: 4,
                    height: 30,
                    color: primaryColor,
                  ),
                  const Text(
                    " About Me",
                    style: TextStyle(
                        fontFamily: urbanist,
                        fontSize: 24,
                        fontWeight: FontWeight.w500,
                        color: blackColor),
                  ),
                ],
              ),
            ],
          ),
          const Spacer(),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        "15+ Years",
                        style: TextStyle(
                            fontFamily: urbanist,
                            fontSize: 24,
                            fontWeight: FontWeight.w700,
                            color: blackColor),
                      ),
                      const Text(
                        "Experience",
                        style: TextStyle(
                            fontFamily: poppinsLight,
                            fontSize: 13,
                            fontWeight: FontWeight.w400,
                            color: blackColor),
                      ),
                      const SizedBox(
                        height: 18,
                      ),
                      Container(
                        width: 102,
                        height: 4,
                        color: blackColor,
                      ),
                    ],
                  ),
                  const SizedBox(
                    width: 100,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        "Top Rated",
                        style: TextStyle(
                            fontFamily: urbanist,
                            fontSize: 24,
                            fontWeight: FontWeight.w700,
                            color: blackColor),
                      ),
                      const Text(
                        "Upwork/ Fiver",
                        style: TextStyle(
                            fontFamily: poppinsLight,
                            fontSize: 13,
                            fontWeight: FontWeight.w400,
                            color: blackColor),
                      ),
                      const SizedBox(
                        height: 18,
                      ),
                      Container(
                        width: 112,
                        height: 4,
                        color: blackColor,
                      ),
                    ],
                  ),
                ],
              ),
              const SizedBox(
                height: 30,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.8,
                        child: const Text(
                          "I'm an experienced and detail-oriented UI/UX designer and Flutter developer from Pakistan who is currently doing Ph.D. in Computer Sciences from NCBA&E. I help my clients to build business solutions through the design language and improve their products.",
                          style: TextStyle(
                              fontFamily: poppinsLight,
                              fontSize: 18,
                              fontWeight: FontWeight.w400,
                              color: blackColor),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 22,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.8,
                        child: const Text(
                          "I'm a top rated freelancer on Upwork and fiverr. Currently their are more than 10 apps live on App store and Play store.I have worked with companies from UAE, CHINA, and USA to achieve their business goals.",
                          style: TextStyle(
                              fontFamily: poppinsLight,
                              fontSize: 18,
                              fontWeight: FontWeight.w400,
                              color: blackColor),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
          const Spacer(
            flex: 2,
          )
        ],
      ),
    );
  }
}
