import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:delayed_display/delayed_display.dart';
import 'package:flutter/material.dart';
import 'package:naumanaziz/screens/constants.dart';
import 'package:naumanaziz/screens/responsive.dart';

class HowCanIhELP extends StatelessWidget {
  const HowCanIhELP({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/images/hcihu.png'),
          fit: BoxFit.fill,
        ),
      ),
      height: 500,
      child: Row(
        children: [
          SizedBox(width: MediaQuery.of(context).size.width * 0.1),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "How can I help you? ",
                style: TextStyle(
                    fontFamily: urbanist,
                    fontSize: 50,
                    fontWeight: FontWeight.w600,
                    color: whiteColor),
              ),
              const SizedBox(
                height: 30,
              ),
              Wrap(children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.4,
                  child: const Text(
                    "I have worked with companies from UAE, CHINA, and USA, and help\nthem with the following tasks:\nUI/UX and Visual communication\nResponsive website and mobile design\nDashboard design and SaaS product design\nA consultation regarding your project/app idea\nDevelop your Cross-platform (Android, iOS, Web) Flutter app\nCan make backend in dot net/ oracle/ Firebase/ AWS/ SQL as well.",
                    style: TextStyle(
                        fontFamily: poppinsLight,
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                        color: whiteColor),
                  ),
                ),
              ]),
            ],
          ),
          const Spacer(),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
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
                      delay: const Duration(milliseconds: 1500),
                      child: hcihy("Firebase", "assets/images/hc3.png")),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  DelayedDisplay(
                      slidingBeginOffset: const Offset(0.35, 0.0),
                      delay: const Duration(milliseconds: 2000),
                      child: hcihy("Website Design", "assets/images/hc4.png")),
                  DelayedDisplay(
                      slidingBeginOffset: const Offset(0.35, 0.0),
                      delay: const Duration(milliseconds: 2500),
                      child: hcihy("App Design", "assets/images/hc5.png")),
                ],
              )
            ],
          ),
          const Spacer(),
        ],
      ),
    );
  }

  Padding hcihy(String name, String image) {
    return Padding(
      padding: const EdgeInsets.only(left: 5, right: 5),
      child: Container(
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
