import 'package:flutter/material.dart';
import 'package:my_portfolio/utils/constants/color_const.dart';
import 'package:my_portfolio/view/responsive/responsive.dart';

class ImageContainer extends StatelessWidget {
  const ImageContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: ResponsiveWebSite.isDesktop(context) ? 310 : 250,
      width: ResponsiveWebSite.isDesktop(context) ? 250 : 200,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        gradient: const LinearGradient(colors: [
          CustomColor.bluePrimary,
          CustomColor.redPrimary,
        ]),
        boxShadow: const [
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
        ],
      ),
      child: Container(
        alignment: Alignment.center,
        margin: EdgeInsets.all(5),
        decoration: BoxDecoration(
          color: CustomColor.bgLight1,
          borderRadius: BorderRadius.circular(30),
        ),
        child: Image.asset(
          'assets/my_portfolio_profile.png',
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
