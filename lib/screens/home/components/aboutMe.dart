import 'package:flutter/material.dart';
import 'package:naumanaziz/screens/constants.dart';

class AboutMe extends StatelessWidget {
  const AboutMe({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: MediaQuery.of(context).size.width * 0.1),
      width: MediaQuery.of(context).size.width,
      color: whiteColor,
      height: 500,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
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
                    height: 36,
                    color: primaryColor,
                  ),
                  const Text(
                    " About Me",
                    style: TextStyle(
                        fontFamily: urbanist,
                        fontSize: 48,
                        fontWeight: FontWeight.w700,
                        color: blackColor),
                  ),
                ],
              ),
            ],
          ),
          const SizedBox(
            height: 60,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Wrap(
                spacing: 100,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        "15+ Years",
                        style: TextStyle(
                            fontFamily: urbanist,
                            fontSize: 58,
                            fontWeight: FontWeight.w700,
                            color: blackColor),
                      ),
                      const Text(
                        "Experience",
                        style: TextStyle(
                            fontFamily: poppinsLight,
                            fontSize: 18,
                            fontWeight: FontWeight.w400,
                            color: blackColor),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Container(
                        width: 254,
                        height: 4,
                        color: blackColor,
                      ),
                      const SizedBox(
                        height: 18,
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.4,
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
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        "Top Rated Plus",
                        style: TextStyle(
                            fontFamily: urbanist,
                            fontSize: 58,
                            fontWeight: FontWeight.w700,
                            color: blackColor),
                      ),
                      const Text(
                        "Experience",
                        style: TextStyle(
                            fontFamily: poppinsLight,
                            fontSize: 18,
                            fontWeight: FontWeight.w400,
                            color: blackColor),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Container(
                        width: 254,
                        height: 4,
                        color: blackColor,
                      ),
                      const SizedBox(
                        height: 18,
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.4,
                        child: const Text(
                          "I'm a top rated plus freelancer on Upwork and fiverr. Currently there are more than 10 x live on App store and Play store.I have worked with companies from UAE, CHINA, and USA to achieve their business goals.",
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
        ],
      ),
    );
  }
}
