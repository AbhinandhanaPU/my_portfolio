import 'package:flutter/material.dart';
import 'package:my_portfolio/model/education_model.dart';
import 'package:my_portfolio/utils/constants/color_const.dart';

class EducationMobile extends StatelessWidget {
  const EducationMobile({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    return SingleChildScrollView(
      child: Container(
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
                runSpacing: 25,
                children: [
                  for (int i = 0; i < educationDetails.length; i++)
                    EducationMobileCard(
                      education: educationDetails[i],
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

class EducationMobileCard extends StatelessWidget {
  const EducationMobileCard({
    super.key,
    required this.education,
  });
  final EducationModel education;

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    return Container(
      height: 150,
      width: screenWidth * 3 / 4,
      padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
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
          // course
          Text(
            education.cource,
            style: const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w700,
              color: CustomColor.whitePrimary,
            ),
          ),
          // college
          Text(
            education.college,
            style: const TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w500,
              color: CustomColor.whiteSecondary,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              // year
              Text(
                education.year,
                style: const TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w500,
                  color: CustomColor.whitePrimary,
                ),
              ),
              // Percentage
              Text(
                education.percentage,
                style: const TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w500,
                  color: CustomColor.whitePrimary,
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
