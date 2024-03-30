import 'package:flutter/material.dart';
import 'package:my_portfolio/constants/color_const.dart';
import 'package:my_portfolio/constants/size.dart';
import 'package:my_portfolio/widgets/drawer_mobile.dart';
import 'package:my_portfolio/widgets/header/header_desktop.dart';
import 'package:my_portfolio/widgets/header/header_mobile.dart';
import 'package:my_portfolio/widgets/home/home_desktop.dart';
import 'package:my_portfolio/widgets/home/home_mobile.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      return Scaffold(
        key: scaffoldKey,
        backgroundColor: CustomColor.scaffoldBg,
        endDrawer: constraints.maxWidth >= minDesktopWidth
            ? null
            : DrawerMobile(
                onNavItemTap: (p0) {
                  scaffoldKey.currentState?.closeEndDrawer();
                },
              ),
        body: Column(
          children: [
            // header
            if (constraints.maxWidth >= minDesktopWidth)
              HeaderDesktop()
            else
              HeaderMobile(
                onLogoTap: () {},
                onMenuTap: () {
                  scaffoldKey.currentState?.openEndDrawer();
                },
              ),
            Expanded(
              child: PageView(
                scrollDirection: Axis.vertical,
                physics: AlwaysScrollableScrollPhysics(),
                children: [
                  // home
                  if (constraints.maxWidth >= minDesktopWidth)
                    HomeDesktop()
                  else
                    HomeMobile(),
                  // about
                  // projects
                  // education
                  // certifications
                  // contact
                ],
              ),
            ),
          ],
        ),
      );
    });
  }
}
