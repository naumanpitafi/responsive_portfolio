import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:naumanaziz/screens/constants.dart';
import 'package:naumanaziz/screens/responsive.dart';
import 'package:url_launcher/url_launcher.dart';

class InfoMobile extends StatelessWidget {
  const InfoMobile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.only(left: 20),
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/mobilebg.png'),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 50,
            ),
            const Text(
              "Hi I'm",
              style: TextStyle(
                  fontFamily: poppinsLight,
                  fontSize: 15,
                  fontWeight: FontWeight.w400,
                  color: blackColor),
            ),
            const SizedBox(
              height: 10,
            ),
            const Text(
              "Nauman Aziz",
              style: TextStyle(
                  fontFamily: poppinsLight,
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                  color: blackColor),
            ),
            SizedBox(
              height: 70,
              width: 550,
              child: Row(
                children: [
                  DefaultTextStyle(
                    style: TextStyle(
                        fontSize: 40.0,
                        fontWeight: FontWeight.w600,
                        fontFamily: urbanist,
                        foreground: Paint()
                          ..shader = const LinearGradient(colors: <Color>[
                            Color(0xff504DEE),
                            Color(0xffE95E92)
                          ]).createShader(
                              const Rect.fromLTWH(0.0, 0.0, 250.0, 10.0))),
                    child: AnimatedTextKit(
                      repeatForever: true,
                      pause: const Duration(milliseconds: 10),
                      animatedTexts: [
                        RotateAnimatedText('UI/UX Designer'),
                        RotateAnimatedText('Flutter Developer'),
                        RotateAnimatedText('Firebase'),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Wrap(children: const [
              SizedBox(
                width: 300,
                child: Text(
                  "Expert in creating visually stunning designs and user-friendly interfaces for web and mobile applications.",
                  style: TextStyle(
                      fontFamily: poppinsLight,
                      fontSize: 15,
                      fontWeight: FontWeight.w400,
                      color: blackColor),
                ),
              ),
            ]),
            const SizedBox(
              height: 20,
            ),
            Row(
              children: [
                GestureDetector(
                  onTap: () {
                    Uri url = Uri.parse(
                        "https://www.linkedin.com/in/nauman-aziz-pitafi-34994115/");
                    _launchInBrowser(url);
                  },
                  child: Image.asset(
                    "assets/images/linkdin.png",
                    height: 29,
                    width: 29,
                  ),
                ),
                const SizedBox(
                  width: 20,
                ),
                GestureDetector(
                  onTap: () {
                    Uri url = Uri.parse("https://www.behance.net/nauman3998");
                    _launchInBrowser(url);
                  },
                  child: Image.asset(
                    "assets/images/behance.png",
                    height: 45,
                    width: 39,
                  ),
                ),
                const SizedBox(
                  width: 20,
                ),
                GestureDetector(
                  onTap: () {
                    Uri url = Uri.parse("https://dribbble.com/napitafi1");
                    _launchInBrowser(url);
                  },
                  child: Image.asset(
                    "assets/images/dribble.png",
                    height: 45,
                    width: 29,
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 30,
            ),
            Container(
              color: primaryColor,
              width: 160,
              height: 40,
              child: const Center(
                child: Text(
                  "Download Resume",
                  style: TextStyle(
                      fontFamily: poppinsLight,
                      fontSize: 15,
                      fontWeight: FontWeight.w600,
                      color: whiteColor),
                ),
              ),
            ),
            const Spacer(
              flex: 4,
            )
          ],
        ));
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
