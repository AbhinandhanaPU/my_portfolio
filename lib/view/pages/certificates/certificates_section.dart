import 'package:flutter/material.dart';
import 'package:my_portfolio/model/certifiacates_model.dart';
import 'package:my_portfolio/utils/constants/color_const.dart';
import 'package:my_portfolio/view/pages/certificates/certificates_card.dart';
import 'package:my_portfolio/view/responsive/responsive.dart';

class CerttificatesSection extends StatelessWidget {
  const CerttificatesSection({super.key});

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;
    return SingleChildScrollView(
      child: Container(
        padding: EdgeInsets.only(top: 15, left: 20, right: 20),
        width: screenWidth,
        height: ResponsiveWebSite.isDesktop(context) ? screenHeight : null,
        child: Column(
          children: [
            const Text(
              "Certificates & Skill development programs",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: CustomColor.whitePrimary,
              ),
            ),
            const SizedBox(height: 20),
            // Work projects cards
            ConstrainedBox(
              constraints: const BoxConstraints(maxWidth: 900),
              child: Wrap(
                spacing: 40,
                runSpacing: 40,
                children: [
                  for (int i = 0; i < certificates.length; i++)
                    CertificatesCard(
                      skillData: certificates[i],
                    ),
                ],
              ),
            ),
            const SizedBox(height: 30),
          ],
        ),
      ),
    );
  }
}
