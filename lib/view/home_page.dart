import 'package:flutter/material.dart';
import 'package:my_portfolio/utils/constants/color_const.dart';
import 'package:my_portfolio/view/responsive/responsive.dart';
import 'package:my_portfolio/view/widgets/about/about.dart';
import 'package:my_portfolio/view/widgets/certificates/certificates_section.dart';
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
            ResponsiveWebSite.isDesktop(context)
                ? HeaderDesktop(onNavItemTap: (int navIndex) {
                    scrollToSection(navIndex);
                  })
                : HeaderMobile(
                    onLogoTap: () {},
                    onMenuTap: () {
                      scaffoldKey.currentState?.openEndDrawer();
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
                    ResponsiveWebSite.isDesktop(context)
                        ? HomeDesktop()
                        : HomeMobile(),
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
