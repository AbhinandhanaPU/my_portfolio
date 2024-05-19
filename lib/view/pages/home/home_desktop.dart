import 'package:flutter/material.dart';
import 'package:my_portfolio/utils/constants/color_const.dart';
import 'package:my_portfolio/widgets/image_container.dart';
import 'package:my_portfolio/widgets/resume_container.dart';

class HomeDesktop extends StatefulWidget {
  const HomeDesktop({super.key});

  @override
  State<HomeDesktop> createState() => _HomeDesktopState();
}

class _HomeDesktopState extends State<HomeDesktop> {
  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    final screenHeight = screenSize.height;

    return Container(
      height: screenHeight,
      margin: const EdgeInsets.symmetric(
        horizontal: 20.0,
      ),
      constraints: const BoxConstraints(
        minHeight: 350.0,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // intro message
              const Text(
                "Hi,\nI'm Abhinandhana \nA Flutter Developer",
                style: TextStyle(
                  fontSize: 30,
                  height: 1.5,
                  fontWeight: FontWeight.bold,
                  color: CustomColor.whitePrimary,
                ),
              ),
              const SizedBox(height: 40),
              // resume btn
              ResumeContainer()
            ],
          ),
          // image container
          ImageContainer()
        ],
      ),
    );
  }
}
