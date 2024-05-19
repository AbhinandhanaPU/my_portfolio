import 'dart:js' as js;

import 'package:flutter/material.dart';
import 'package:my_portfolio/utils/constants/color_const.dart';

class ResumeContainer extends StatelessWidget {
  const ResumeContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
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
          onPressed: () {
            js.context.callMethod("open", [
              "https://drive.google.com/file/d/1US7pyQBLQyVhSp-qmQZdi9B5oYips_Bk/view?usp=sharing"
            ]);
          },
          child: Text(
            "Resume",
            style: TextStyle(
                letterSpacing: 1.5,
                fontWeight: FontWeight.bold,
                color: CustomColor.whitePrimary),
          )),
    );
  }
}
