import 'package:flutter/material.dart';
import 'package:my_portfolio/model/project_model.dart';
import 'package:my_portfolio/utils/constants/color_const.dart';
import 'dart:js' as js;

class ProjectCard extends StatelessWidget {
  const ProjectCard({super.key, required this.project});
  final ProjectModel project;
  @override
  Widget build(BuildContext context) {
    return Container(
      clipBehavior: Clip.antiAlias,
      height: 260,
      width: 240,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: CustomColor.bgLight2,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          // title
          Padding(
            padding: const EdgeInsets.fromLTRB(12, 15, 12, 12),
            child: Text(
              project.title,
              style: const TextStyle(
                fontWeight: FontWeight.w700,
                color: CustomColor.whitePrimary,
              ),
            ),
          ),
          // subtitle
          Padding(
            padding: const EdgeInsets.fromLTRB(12, 0, 12, 12),
            child: Text(
              project.subTitle,
              textAlign: TextAlign.justify,
              style: const TextStyle(
                fontSize: 12,
                color: CustomColor.whiteSecondary,
              ),
            ),
          ),
          const Spacer(),
          // footer
          Container(
            color: CustomColor.bgLight1,
            padding: const EdgeInsets.symmetric(
              horizontal: 12,
              vertical: 10,
            ),
            child: Row(
              children: [
                const Text(
                  "Check on GitHub:",
                  style: TextStyle(
                    color: CustomColor.whitePrimary,
                    fontSize: 12,
                  ),
                ),
                const Spacer(),
                Padding(
                  padding: const EdgeInsets.only(left: 6),
                  child: InkWell(
                    onTap: () {
                      js.context.callMethod("open", [project.gitLink]);
                    },
                    child: Image.asset(
                      "assets/github.png",
                      width: 25,
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
