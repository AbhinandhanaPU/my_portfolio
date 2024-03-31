import 'package:flutter/material.dart';
import 'package:my_portfolio/utils/constants/color_const.dart';

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
      margin: const EdgeInsets.symmetric(
        horizontal: 40.0,
        vertical: 40.0,
      ),
      height: screenHeight,
      constraints: const BoxConstraints(
        minHeight: 560.0,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          // image container
          Container(
            height: 280,
            width: 250,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                gradient: LinearGradient(
                  colors: [
                    CustomColor.bluePrimary,
                    CustomColor.redPrimary,
                  ],
                ),
                boxShadow: [
                  BoxShadow(
                    color: CustomColor.bluePrimary,
                    offset: Offset(-2, 0),
                    blurRadius: 20,
                  ),
                  BoxShadow(
                    color: CustomColor.redPrimary,
                    offset: Offset(2, 0),
                    blurRadius: 20,
                  ),
                ]),
            child: Container(
              margin: EdgeInsets.all(5),
              decoration: BoxDecoration(
                color: CustomColor.bgLight1,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Image.asset(
                'assets/my_portfolio_profile.png',
                fit: BoxFit.cover,
              ),
            ),
          ),
          const SizedBox(height: 50),
          // intro message
          const Text(
            "Hi,\nI'm Abhinandhana P U\nA Flutter Developer",
            style: TextStyle(
              fontSize: 25,
              height: 1.5,
              fontWeight: FontWeight.bold,
              color: CustomColor.whitePrimary,
            ),
          ),
          const SizedBox(height: 40),
          // resume btn
          Container(
            width: 200.0,
            height: 40,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              gradient: LinearGradient(
                colors: [
                  CustomColor.bluePrimary,
                  CustomColor.redPrimary,
                ],
              ),
            ),
            child: TextButton(
                onPressed: () {},
                child: Text(
                  "Resume",
                  style: TextStyle(
                      letterSpacing: 1.5,
                      fontWeight: FontWeight.bold,
                      color: CustomColor.whitePrimary),
                )),
          ), // image container
        ],
      ),
    );
  }
}
