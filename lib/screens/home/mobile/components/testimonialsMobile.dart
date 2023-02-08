import 'package:flutter/material.dart';
import 'package:naumanaziz/screens/constants.dart';
import 'package:naumanaziz/widgets/mobile/testimonilasMobile.dart';
import 'package:naumanaziz/widgets/testimonialwidget.dart';

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
                padding: const EdgeInsets.all(20),
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
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            TestimionialWidgetMobile(
                              image: "assets/images/userreview.png",
                              title: "Mobile App screens design",
                              subtitle: "@Upwork",
                              decs:
                                  "He is very proactive and understand the instruction clearly. He is fast pace and have a very good communication skill. His work is also creative and delivered before the due time.I highly recommend.",
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
