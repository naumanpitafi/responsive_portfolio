import 'package:flutter/material.dart';
import 'package:naumanaziz/screens/constants.dart';
import 'package:smooth_star_rating_null_safety/smooth_star_rating_null_safety.dart';

class TestimionialWidgetMobile extends StatelessWidget {
  String image, title, subtitle, decs;
  TestimionialWidgetMobile(
      {super.key,
      required this.image,
      required this.title,
      required this.subtitle,
      required this.decs});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.7,
      decoration: BoxDecoration(
        color: whiteColor,
        boxShadow: [
          BoxShadow(
            color: const Color.fromARGB(255, 218, 218, 218).withOpacity(0.50),
            blurRadius: 10,
            spreadRadius: 1,
            offset: const Offset(4, 8), // Shadow position
          ),
        ],
      ),
      padding: const EdgeInsets.only(top: 10, bottom: 10, left: 15, right: 15),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              ClipRRect(
                child: Image.asset(
                  image,
                  height: 88,
                  width: 88,
                ),
              ),
              const SizedBox(
                width: 20,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: const TextStyle(
                        fontFamily: urbanist,
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        color: Color(0xff38327C)),
                  ),
                  Text(
                    subtitle,
                    style: const TextStyle(
                        fontFamily: poppinsLight,
                        fontSize: 13,
                        fontWeight: FontWeight.w500,
                        color: Color(0xff878CBD)),
                  ),
                  const SizedBox(height: 5),
                  SmoothStarRating(
                      allowHalfRating: false,
                      starCount: 5,
                      rating: 5,
                      size: 20.0,
                      filledIconData: Icons.star,
                      halfFilledIconData: Icons.star,
                      color: Color(0xffFFB443),
                      borderColor: Color(0xffFFB443),
                      spacing: 0.0),
                ],
              ),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.8,
            child: Wrap(children: [
              Text(
                decs,
                maxLines: 3,
                style: const TextStyle(
                    fontFamily: urbanist,
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                    color: Color(0xff878CBD)),
              ),
            ]),
          ),
        ],
      ),
    );
  }
}
