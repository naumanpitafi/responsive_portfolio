import 'package:flutter/material.dart';
import 'package:naumanaziz/screens/constants.dart';
import 'package:naumanaziz/widgets/mobile/testimonilasMobile.dart';

class TestinomialsMobile extends StatelessWidget {
  const TestinomialsMobile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(color: whiteColor),
      child: Row(
        children: [
          const SizedBox(width: 30),
          Column(
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
                    " Reviews",
                    style: TextStyle(
                        fontFamily: urbanist,
                        fontSize: 24,
                        fontWeight: FontWeight.w700,
                        color: blackColor),
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                width: MediaQuery.of(context).size.width * 0.8,
                padding: const EdgeInsets.only(
                    top: 20, bottom: 20, left: 10, right: 10),
                decoration: const BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage(
                          "assets/images/testbg.png",
                        ),
                        fit: BoxFit.contain)),
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(
                        height: 20,
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.8,
                        height: 220,
                        child: ListView(
                          scrollDirection: Axis.horizontal,
                          children: [
                            TestimionialWidgetMobile(
                              image: "assets/images/userreview.png",
                              title: "Mobile App screens design",
                              subtitle: "@Upwork",
                              decs:
                                  "He is very proactive and understand the instruction clearly. He is fast pace and have a very good communication skill. His work is also creative and delivered before the due time.I highly recommend.",
                            ),
                            TestimionialWidgetMobile(
                              image: "assets/images/userreview.png",
                              title: "Mobile Apps Improvements",
                              subtitle: "@Upwork",
                              decs:
                                  "Good work, and will work with him again.\n\n",
                            ),
                            TestimionialWidgetMobile(
                              image: "assets/images/userreview.png",
                              title: "Mobile Apps Improvements",
                              subtitle: "@Upwork",
                              decs:
                                  "Hardworking guy, Honest. he helped us a lot with our projects and completed tasks on time without any issues.",
                            ),
                            TestimionialWidgetMobile(
                              image: "assets/images/userreview.png",
                              title: "Flutter expert",
                              subtitle: "@Upwork",
                              decs: "Great work.\n\n",
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
