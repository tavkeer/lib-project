import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../size_config.dart';

class HeaderTextWithIcon extends StatelessWidget {
  final String greeting;
  final String text;
  const HeaderTextWithIcon({
    super.key,
    required this.greeting,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              greeting,
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                fontFamily: GoogleFonts.arimo().fontFamily,
                color: Colors.black,
              ),
            ),
            const SizedBox(height: 10),
            Text(
              text,
              style: TextStyle(
                color: Colors.grey[700],
                fontSize: 18,
              ),
            ),
          ],
        ),
        Container(
          padding: const EdgeInsets.all(12),
          height: getProportionateScreenHeight(48),
          width: getProportionateScreenWidth(48),
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            border: Border.all(
              color: Colors.grey,
            ),
          ),
          child: SvgPicture.asset(
            "assets/images/notification.svg",
            // color: Colors.black,
          ),
        ),
      ],
    );
  }
}
