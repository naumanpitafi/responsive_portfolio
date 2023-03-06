import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:naumanaziz/screens/constants.dart';
import 'package:url_launcher/url_launcher.dart';

class Info extends StatelessWidget {
  const Info({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.width * 0.52,
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/images/info.png'),
          fit: BoxFit.cover,
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SizedBox(width: MediaQuery.of(context).size.width * 0.1),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 70,
              ),
              const Text(
                "Hi I'm",
                style: TextStyle(
                    fontFamily: poppinsLight,
                    fontSize: 18,
                    fontWeight: FontWeight.w400,
                    color: blackColor),
              ),
              const Text(
                "Nauman Aziz",
                style: TextStyle(
                    fontFamily: poppinsLight,
                    fontSize: 32,
                    fontWeight: FontWeight.w600,
                    color: blackColor),
              ),
              SizedBox(
                height: 120,
                width: 550,
                child: Row(
                  children: [
                    DefaultTextStyle(
                      style: TextStyle(
                          fontSize: 60.0,
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
                height: 10,
              ),
              Wrap(children: const [
                SizedBox(
                  width: 500,
                  child: Text(
                    "Expert in creating visually stunning designs and user-friendly interfaces for web and mobile applications.",
                    style: TextStyle(
                        fontFamily: poppinsLight,
                        fontSize: 20,
                        fontWeight: FontWeight.w400,
                        color: blackColor),
                  ),
                ),
              ]),
              const SizedBox(
                height: 30,
              ),
              Row(
                children: [
                  InkWell(
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
                  InkWell(
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
                  InkWell(
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
              InkWell(
                onTap: () {
                  Uri url = Uri.parse(
                      "https://drive.google.com/file/d/1JqO2t-xSPkMba1HEUILMZuyP-LsCQiyw/view?usp=share_link");
                  _launchInBrowser(url);
                },
                child: Container(
                  color: primaryColor,
                  width: 230,
                  height: 40,
                  child: const Center(
                    child: Text(
                      "Download Resume",
                      style: TextStyle(
                          fontFamily: poppinsLight,
                          fontSize: 20,
                          fontWeight: FontWeight.w600,
                          color: whiteColor),
                    ),
                  ),
                ),
              ),
              const Spacer(
                flex: 4,
              )
            ],
          ),
          const Spacer(
            flex: 8,
          ),
        ],
      ),
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
