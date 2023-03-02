import 'package:flutter/material.dart';
import 'package:naumanaziz/screens/constants.dart';
import 'package:naumanaziz/widgets/testimonialwidget.dart';

class Testinomials extends StatelessWidget {
  const Testinomials({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      // padding: EdgeInsets.only(left: MediaQuery.of(context).size.width * 0.1),
      decoration: const BoxDecoration(color: whiteColor),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            height: 100,
          ),
          Padding(
            padding:
                EdgeInsets.only(left: MediaQuery.of(context).size.width * 0.1),
            child: Row(
              children: [
                Container(
                  width: 4,
                  height: 36,
                  color: primaryColor,
                ),
                const Text(
                  " Reviews",
                  style: TextStyle(
                      fontFamily: urbanist,
                      fontSize: 48,
                      fontWeight: FontWeight.w700,
                      color: blackColor),
                ),
              ],
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            padding: const EdgeInsets.all(20),
            decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(
                      "assets/images/testbg.png",
                    ),
                    fit: BoxFit.contain)),
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const SizedBox(
                    height: 100,
                  ),
                  Wrap(
                    crossAxisAlignment: WrapCrossAlignment.center,
                    alignment: WrapAlignment.center,
                    runAlignment: WrapAlignment.center,
                    verticalDirection: VerticalDirection.down,
                    spacing: 20,
                    runSpacing: 20,
                    children: [
                      TestimionialWidget(
                        image: "assets/images/userreview.png",
                        title: "Mobile App screens design",
                        subtitle: "@Upwork",
                        decs:
                            "He is very proactive and understand the instruction clearly. He is fast pace and have a very good communication skill. His work is also creative and delivered before the due time.I highly recommend.",
                      ),
                      TestimionialWidget(
                        image: "assets/images/userreview.png",
                        title: "Mobile Apps Improvements",
                        subtitle: "@Upwork",
                        decs: "Good work, and will work with him again.\n\n",
                      ),
                      TestimionialWidget(
                        image: "assets/images/userreview.png",
                        title: "Mobile Apps Improvements",
                        subtitle: "@Upwork",
                        decs:
                            "Hardworking guy, Honest. he helped us a lot with our projects and completed tasks on time without any issues.",
                      ),
                      TestimionialWidget(
                        image: "assets/images/userreview.png",
                        title: "Flutter expert",
                        subtitle: "@Upwork",
                        decs: "Great work.\n\n",
                      ),
                    ],
                  ),
                  Container(
                    height: 30,
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
