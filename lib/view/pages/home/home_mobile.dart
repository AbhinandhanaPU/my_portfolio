import 'package:flutter/material.dart';
import 'package:my_portfolio/utils/constants/color_const.dart';
import 'package:my_portfolio/widgets/image_container.dart';
import 'package:my_portfolio/widgets/resume_container.dart';

class HomeMobile extends StatefulWidget {
  const HomeMobile({super.key});

  @override
  State<HomeMobile> createState() => _HomeMobileState();
}

class _HomeMobileState extends State<HomeMobile> {
  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    final screenHeight = screenSize.height;

    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: 10.0,
        vertical: 10.0,
      ),
      margin: const EdgeInsets.symmetric(
        horizontal: 10.0,
        vertical: 10.0,
      ),
      height: screenHeight,
      constraints: const BoxConstraints(
        minHeight: 560.0,
      ),
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const SizedBox(height: 20),
            // image container
            ImageContainer(),
            const SizedBox(height: 30),
            // intro message
            const Text(
              "Hi,\nI'm Abhinandhana \nA Flutter Developer",
              style: TextStyle(
                fontSize: 20,
                height: 1.5,
                fontWeight: FontWeight.bold,
                color: CustomColor.whitePrimary,
              ),
            ),
            const SizedBox(height: 30),
            // resume btn
            ResumeContainer()
          ],
        ),
      ),
    );
  }
}
