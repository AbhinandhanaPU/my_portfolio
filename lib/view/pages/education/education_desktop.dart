import 'package:flutter/material.dart';
import 'package:my_portfolio/model/education_model.dart';
import 'package:my_portfolio/utils/constants/color_const.dart';

class EducationDesktop extends StatelessWidget {
  const EducationDesktop({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    return SingleChildScrollView(
      child: Container(
        height: screenHeight,
        width: screenWidth,
        padding: EdgeInsets.symmetric(vertical: 30),
        child: Column(
          children: [
            const Text(
              "Education History",
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: CustomColor.whitePrimary,
              ),
            ),
            const SizedBox(height: 30),
            // education cards
            ConstrainedBox(
              constraints: const BoxConstraints(maxWidth: 900),
              child: Wrap(
                runSpacing: 40,
                children: [
                  for (int i = 0; i < educationDetails.length; i++)
                    EducationDesktopCard(
                      education: educationDetails[i],
                      width: screenWidth * 3 / 4,
                    ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class EducationDesktopCard extends StatelessWidget {
  const EducationDesktopCard(
      {super.key, required this.education, required this.width});

  final EducationModel education;
  final double width;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 120,
      width: width,
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: CustomColor.bgLight2,
        boxShadow: [
          BoxShadow(
            color: CustomColor.whiteSecondary,
            offset: Offset(0, 0),
            blurRadius: 6,
          ),
        ],
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // title
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                education.cource,
                style: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w700,
                  color: CustomColor.whitePrimary,
                ),
              ),
              Text(
                education.year,
                style: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w700,
                  color: CustomColor.whitePrimary,
                ),
              ),
            ],
          ),
          // subtitle
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                education.college,
                textAlign: TextAlign.justify,
                style: const TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w500,
                  color: CustomColor.whiteSecondary,
                ),
              ),
              Text(
                education.percentage,
                textAlign: TextAlign.justify,
                style: const TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w500,
                  color: CustomColor.whiteSecondary,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
