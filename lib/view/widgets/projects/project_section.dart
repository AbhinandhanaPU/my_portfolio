import 'package:flutter/material.dart';
import 'package:my_portfolio/model/project_model.dart';
import 'package:my_portfolio/utils/constants/color_const.dart';
import 'package:my_portfolio/view/widgets/projects/project_card.dart';

class ProjectSection extends StatelessWidget {
  const ProjectSection({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    return SingleChildScrollView(
      child: Container(
        width: screenWidth,
        child: Column(
          children: [
            const SizedBox(height: 30),
            const Text(
              "Projects",
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: CustomColor.whitePrimary,
              ),
            ),
            const SizedBox(height: 30),
            // Work projects cards
            ConstrainedBox(
              constraints: const BoxConstraints(maxWidth: 900),
              child: Wrap(
                spacing: 25,
                runSpacing: 25,
                children: [
                  for (int i = 0; i < projectDetails.length; i++)
                    ProjectCard(
                      project: projectDetails[i],
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
