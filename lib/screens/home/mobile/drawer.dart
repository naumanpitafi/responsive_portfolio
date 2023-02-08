import 'package:flutter/material.dart';
import 'package:naumanaziz/screens/constants.dart';
import 'package:url_launcher/url_launcher.dart';

class SideMenu extends StatelessWidget {
  const SideMenu({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: whiteColor,
      child: SafeArea(
        child: Column(
          children: [
            const SizedBox(
              height: 10,
            ),
            Image.asset(
              "assets/images/signature.png",
              width: 120,
              height: 30,
            ),
            // const Divider(
            //   color: primaryColor,
            //   thickness: 1,
            // ),
            const SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text(
                    "About",
                    style: TextStyle(
                        fontFamily: poppinsLight,
                        fontSize: 18,
                        fontWeight: FontWeight.w400,
                        color: blackColor),
                  ),
                  Icon(
                    Icons.arrow_forward_ios,
                    color: primaryColor,
                    size: 16,
                  )
                ],
              ),
            ),
            // const Divider(
            //   color: primaryColor,
            //   thickness: 1,
            // ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text(
                    "Service",
                    style: TextStyle(
                        fontFamily: poppinsLight,
                        fontSize: 18,
                        fontWeight: FontWeight.w400,
                        color: blackColor),
                  ),
                  Icon(
                    Icons.arrow_forward_ios,
                    color: primaryColor,
                    size: 16,
                  )
                ],
              ),
            ),
            // const Divider(
            //   color: primaryColor,
            //   thickness: 1,
            // ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text(
                    "Projects",
                    style: TextStyle(
                        fontFamily: poppinsLight,
                        fontSize: 18,
                        fontWeight: FontWeight.w400,
                        color: blackColor),
                  ),
                  Icon(
                    Icons.arrow_forward_ios,
                    color: primaryColor,
                    size: 16,
                  )
                ],
              ),
            ),
            // const Divider(
            //   color: primaryColor,
            //   thickness: 1,
            // ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text(
                    "Reviews",
                    style: TextStyle(
                        fontFamily: poppinsLight,
                        fontSize: 18,
                        fontWeight: FontWeight.w400,
                        color: blackColor),
                  ),
                  Icon(
                    Icons.arrow_forward_ios,
                    color: primaryColor,
                    size: 16,
                  )
                ],
              ),
            ),
            // const Divider(
            //   color: primaryColor,
            //   thickness: 1,
            // ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text(
                    "Contact",
                    style: TextStyle(
                        fontFamily: poppinsLight,
                        fontSize: 18,
                        fontWeight: FontWeight.w400,
                        color: blackColor),
                  ),
                  Icon(
                    Icons.arrow_forward_ios,
                    color: primaryColor,
                    size: 16,
                  )
                ],
              ),
            ),
            // const Divider(
            //   color: primaryColor,
            //   thickness: 1,
            // ),
          ],
        ),
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
