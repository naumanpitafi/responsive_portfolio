import 'package:delayed_display/delayed_display.dart';
import 'package:flutter/material.dart';
import 'package:naumanaziz/screens/constants.dart';

class HowCanMobile extends StatelessWidget {
  const HowCanMobile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.only(left: 20, top: 80, bottom: 80),
        width: MediaQuery.of(context).size.width,
        //height: MediaQuery.of(context).size.height * 0.7,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/mobilebg2.png'),
            fit: BoxFit.fill,
          ),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "How can I help you? ",
                style: TextStyle(
                    fontFamily: urbanist,
                    fontSize: 36,
                    fontWeight: FontWeight.w400,
                    color: whiteColor),
              ),
              const SizedBox(
                height: 30,
              ),
              Wrap(children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.9,
                  child: const Text(
                    "I have worked with companies from UAE, CHINA, and USA, and help them with the following tasks: UI/UX and Visual communication Responsive website and mobile design Dashboard design and SaaS product design A consultation regarding your project/app idea Develop your Cross-platform (Android, iOS, Web) Flutter app Can make backend in dot net/ oracle/ Firebase/ AWS/ SQL as well.",
                    style: TextStyle(
                        fontFamily: poppinsLight,
                        fontSize: 14,
                        fontWeight: FontWeight.w300,
                        color: whiteColor),
                  ),
                ),
              ]),
              const SizedBox(
                height: 40,
              ),
              Wrap(
                alignment: WrapAlignment.center,
                spacing: 10,
                runSpacing: 20,
                children: [
                  DelayedDisplay(
                      slidingBeginOffset: const Offset(0.35, 0.0),
                      delay: const Duration(milliseconds: 500),
                      child: hcihy("UI/UX Design", "assets/images/hc1.png")),
                  DelayedDisplay(
                      slidingBeginOffset: const Offset(0.35, 0.0),
                      delay: const Duration(milliseconds: 1000),
                      child: hcihy("Flutter", "assets/images/hc2.png")),
                  DelayedDisplay(
                      slidingBeginOffset: const Offset(0.35, 0.0),
                      delay: const Duration(milliseconds: 1000),
                      child: hcihy("Firebase", "assets/images/hc3.png")),
                  DelayedDisplay(
                      slidingBeginOffset: const Offset(0.35, 0.0),
                      delay: const Duration(milliseconds: 1500),
                      child: hcihy("Website Design", "assets/images/hc4.png")),
                  DelayedDisplay(
                      slidingBeginOffset: const Offset(0.35, 0.0),
                      delay: const Duration(milliseconds: 1500),
                      child: hcihy("App Design", "assets/images/hc5.png")),
                ],
              ),
            ],
          ),
        ));
  }

  Padding hcihy(String name, String image) {
    return Padding(
      padding: const EdgeInsets.only(left: 5, right: 5),
      child: Container(
        width: 200,
        padding:
            const EdgeInsets.only(left: 15, right: 15, top: 10, bottom: 10),
        decoration: BoxDecoration(
            color: whiteColor, borderRadius: BorderRadius.circular(3)),
        child: Center(
          child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
            Image.asset(
              image,
              height: 20,
              width: 20,
              color: const Color.fromARGB(255, 67, 66, 66),
            ),
            const SizedBox(
              width: 15,
            ),
            Text(
              name,
              style: const TextStyle(
                color: blackColor,
                fontFamily: urbanist,
                fontSize: 20,
                fontWeight: FontWeight.w600,
              ),
            )
          ]),
        ),
      ),
    );
  }
}
