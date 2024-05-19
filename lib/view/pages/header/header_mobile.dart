import 'package:flutter/material.dart';
import 'package:my_portfolio/utils/style/style.dart';
import 'package:my_portfolio/widgets/site_logo.dart';

class HeaderMobile extends StatelessWidget {
  const HeaderMobile({
    super.key,
    required this.onLogoTap,
    this.onMenuTap,
  });
  final Function(int) onLogoTap;
  final VoidCallback? onMenuTap;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50.0,
      margin: const EdgeInsets.fromLTRB(15, 5, 15, 5),
      decoration: headerDecoration,
      child: Row(
        children: [
          SiteLogo(
            onTap: () {
              onLogoTap(0);
            },
          ),
          const Spacer(),
          IconButton(
            onPressed: onMenuTap,
            icon: const Icon(Icons.menu),
          ),
          const SizedBox(width: 15),
        ],
      ),
    );
  }
}
