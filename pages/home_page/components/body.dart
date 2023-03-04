import 'package:flutter/material.dart';
import '../../../size_config.dart';
import 'header_text.dart';

class Body extends StatelessWidget {
  const Body({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: EdgeInsets.only(
          top: getProportionateScreenHeight(34),
          right: getProportionateScreenHeight(18),
          left: getProportionateScreenWidth(18),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const HeaderTextWithIcon(
              greeting: "Hi User",
              text: "What do you want to do today?",
            ),
            const SizedBox(height: 10),
            Divider(
              thickness: 1,
              color: Colors.grey[300],
            ),
            const SizedBox(height: 10),
            const Text(
              "Upcoming Appointments",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 24,
                color: Color(0xFF0040DD),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
