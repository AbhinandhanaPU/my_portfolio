import 'package:flutter/material.dart';
import 'package:my_portfolio/utils/constants/color_const.dart';

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
      height: screenHeight / 1.2,
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
                          fontWeight: FontWeight.bold,
                          color: CustomColor.whitePrimary),
                    )),
              )
            ],
          ),
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
        ],
      ),
    );
  }
}
