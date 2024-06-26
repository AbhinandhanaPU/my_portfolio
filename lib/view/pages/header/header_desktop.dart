import 'package:flutter/material.dart';
import 'package:my_portfolio/utils/constants/color_const.dart';
import 'package:my_portfolio/utils/constants/nav_items.dart';
import 'package:my_portfolio/utils/style/style.dart';
import 'package:my_portfolio/widgets/site_logo.dart';

class HeaderDesktop extends StatelessWidget {
  const HeaderDesktop({
    super.key,
    required this.onNavItemTap,
    required this.onLogoTap,
  });
  final Function(int) onLogoTap;
  final Function(int) onNavItemTap;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60.0,
      margin: const EdgeInsets.symmetric(
        vertical: 10.0,
        horizontal: 20.0,
      ),
      width: double.maxFinite,
      decoration: headerDecoration,
      child: Row(
        children: [
          SiteLogo(
            onTap: () {
              onLogoTap(0);
            },
          ),
          const Spacer(),
          for (int i = 0; i < navTitles.length; i++)
            TextButton(
              onPressed: () {
                onNavItemTap(i);
              },
              child: Text(
                navTitles[i],
                style: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  color: CustomColor.whitePrimary,
                ),
              ),
            ),
        ],
      ),
    );
  }
}
