import 'package:flutter/material.dart';
import 'package:my_portfolio/utils/constants/color_const.dart';
import 'package:my_portfolio/utils/constants/size.dart';
import 'package:my_portfolio/view/widgets/about/about.dart';
import 'package:my_portfolio/view/widgets/contact/contact_section.dart';
import 'package:my_portfolio/view/widgets/education/education_desktop.dart';
import 'package:my_portfolio/view/widgets/education/education_mobile.dart';
import 'package:my_portfolio/view/widgets/header/drawer_mobile.dart';
import 'package:my_portfolio/view/widgets/header/header_desktop.dart';
import 'package:my_portfolio/view/widgets/header/header_mobile.dart';
import 'package:my_portfolio/view/widgets/home/home_desktop.dart';
import 'package:my_portfolio/view/widgets/home/home_mobile.dart';
import 'package:my_portfolio/view/widgets/projects/project_section.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: LayoutBuilder(builder: (context, constraints) {
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
                    About(),

                    // projects
                    ProjectSection(),

                    // education
                    if (constraints.maxWidth >= minDesktopWidth)
                      EducationDesktop()
                    else
                      EducationMobile(),

                    // certifications
                    ContactSection(),
                    // contact
                  ],
                ),
              ),
            ],
          ),
        );
      }),
    );
  }
}
