import 'package:flutter/material.dart';
import 'package:naumanaziz/screens/constants.dart';
import 'package:url_launcher/url_launcher.dart';

class GetinTouch extends StatelessWidget {
  const GetinTouch({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: whiteColor,
      child: Column(
        children: [
          Container(
            color: whiteColor,
            height: 120,
          ),
          Container(
            decoration: const BoxDecoration(color: Color(0xffDEEFE4)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  children: [
                    const SizedBox(
                      height: 60,
                    ),
                    const Text(
                      "Get in touch!",
                      style: TextStyle(
                          fontFamily: urbanist,
                          fontSize: 58,
                          fontWeight: FontWeight.w500,
                          color: blackColor),
                    ),
                    const SizedBox(
                      height: 50,
                    ),
                    const Text(
                      "Want to discuss a project, collaborate, or say hello?",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontFamily: poppinsLight,
                          fontSize: 32,
                          fontWeight: FontWeight.w300,
                          color: blackColor),
                    ),
                    Row(
                      children: const [
                        Text(
                          "Drop me a line,  ",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              decoration: TextDecoration.underline,
                              fontFamily: poppinsLight,
                              fontSize: 32,
                              fontWeight: FontWeight.w300,
                              color: blackColor),
                        ),
                        Text(
                          "I'd love to hear from you! : )",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontFamily: poppinsLight,
                              fontSize: 32,
                              fontWeight: FontWeight.w300,
                              color: blackColor),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 60,
                    ),
                  ],
                ),
              ],
            ),
          ),
          Container(
            color: whiteColor,
            height: 120,
          ),
          Image.asset(
            "assets/images/signature.png",
            width: 147,
            height: 37,
          ),
          const SizedBox(
            height: 50,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
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
          Container(
            color: whiteColor,
            height: 50,
          ),
          const Text(
            "© 2023, All rights reserved",
            style: TextStyle(
                fontFamily: poppinsLight,
                fontSize: 20,
                fontWeight: FontWeight.w400,
                color: blackColor),
          ),
          Container(
            color: whiteColor,
            height: 80,
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
