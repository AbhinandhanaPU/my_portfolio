import 'package:flutter/material.dart';
import 'package:my_portfolio/utils/constants/color_const.dart';
import 'package:my_portfolio/view/pages/about/about.dart';
import 'package:my_portfolio/view/pages/certificates/certificates_section.dart';
import 'package:my_portfolio/view/pages/contact/contact_section.dart';
import 'package:my_portfolio/view/pages/education/education_desktop.dart';
import 'package:my_portfolio/view/pages/education/education_mobile.dart';
import 'package:my_portfolio/view/pages/header/header_desktop.dart';
import 'package:my_portfolio/view/pages/header/header_mobile.dart';
import 'package:my_portfolio/view/pages/home/home_desktop.dart';
import 'package:my_portfolio/view/pages/home/home_mobile.dart';
import 'package:my_portfolio/view/pages/projects/project_section.dart';
import 'package:my_portfolio/view/responsive/responsive.dart';
import 'package:my_portfolio/widgets/drawer_mobile.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final scaffoldKey = GlobalKey<ScaffoldState>();
  final scrollController = ScrollController();
  final List<GlobalKey> navbarKeys = List.generate(6, (index) => GlobalKey());

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: CustomColor.scaffoldBg,
        endDrawer: ResponsiveWebSite.isDesktop(context)
            ? null
            : DrawerMobile(
                onNavItemTap: (int navIndex) {
                  scaffoldKey.currentState?.closeEndDrawer();
                  scrollToSection(navIndex);
                },
              ),
        body: Column(
          children: [
            // header
            ResponsiveWebSite.isMobile(context)
                ? HeaderMobile(
                    onLogoTap: (int navIndex) {
                      scrollToSection(navIndex);
                    },
                    onMenuTap: () {
                      scaffoldKey.currentState?.openEndDrawer();
                    },
                  )
                : HeaderDesktop(
                    onLogoTap: (int navIndex) {
                      scrollToSection(navIndex);
                    },
                    onNavItemTap: (int navIndex) {
                      scrollToSection(navIndex);
                    },
                  ),
            Expanded(
              child: SingleChildScrollView(
                controller: scrollController,
                scrollDirection: Axis.vertical,
                physics: AlwaysScrollableScrollPhysics(),
                child: Column(
                  children: [
                    SizedBox(
                      key: navbarKeys.first,
                    ),
                    // home
                    ResponsiveWebSite.isMobile(context)
                        ? HomeMobile()
                        : HomeDesktop(),
                    // about
                    About(
                      key: navbarKeys[1],
                    ),

                    // projects
                    ProjectSection(
                      key: navbarKeys[2],
                    ),
                    SizedBox(
                      key: navbarKeys[3],
                    ),
                    // education
                    ResponsiveWebSite.isDesktop(context)
                        ? EducationDesktop()
                        : EducationMobile(),

                    // certifications
                    CerttificatesSection(
                      key: navbarKeys[4],
                    ),
                    // contact
                    ContactSection(
                      key: navbarKeys[5],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  void scrollToSection(int navIndex) {
    final key = navbarKeys[navIndex];
    Scrollable.ensureVisible(
      key.currentContext!,
      duration: const Duration(milliseconds: 500),
      curve: Curves.easeInOut,
    );
  }
}
