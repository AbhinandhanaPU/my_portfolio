import 'package:flutter/material.dart';
import 'package:my_portfolio/utils/constants/about_items.dart';
import 'package:my_portfolio/utils/constants/color_const.dart';

class About extends StatefulWidget {
  const About({super.key});

  @override
  State<About> createState() => _AboutState();
}

class _AboutState extends State<About> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        margin: const EdgeInsets.symmetric(
          horizontal: 20.0,
          vertical: 15.0,
        ),
        constraints: const BoxConstraints(
          minHeight: 350.0,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Who Am I ?",
              style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            Text(
              "I'm Abhinandhana P U ,\nA Flutter Developer",
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.w600),
            ),
            SizedBox(height: 10),
            Text(
              'I am a passionate Flutter developer. I enjoy creating beautiful and functional user interfaces using Flutter SDK and Dart programming language. With a keen eye for detail and a knack for problem-solving, I strive to deliver high-quality apps.',
              textAlign: TextAlign.justify,
              style: TextStyle(height: 1.7),
            ),
            Text(
              "My journey into the world of programming started with a fascination for mobile technology and its potential to transform the way we interact with the world. It was this curiosity that led me to explore Flutter, Google's UI toolkit for building natively compiled applications for mobile, web, and desktop from a single codebase.",
              textAlign: TextAlign.justify,
              style: TextStyle(height: 1.7),
            ),
            SizedBox(
              height: 20,
            ),
            Divider(
              color: CustomColor.whitePrimary,
              height: 0,
            ),
            // List of Tools And technologies
            ListView.builder(
              physics: NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemCount: toolsAndTechnologies.length,
              itemBuilder: (context, index) {
                String category = toolsAndTechnologies.keys.elementAt(index);
                List<String> items = toolsAndTechnologies[category]!;
                return Column(
                  children: [
                    ExpansionTile(
                      title: Text(category),
                      children: items
                          .map((item) => ListTile(title: Text("-  $item")))
                          .toList(),
                    )
                  ],
                );
              },
            ),

            Divider(
              color: CustomColor.whitePrimary,
              height: 0,
            ),
            SizedBox(
              height: 20,
            ),
            // personal details list
            ListView.separated(
              physics: NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemCount: personalDetails.length,
              separatorBuilder: (context, index) => SizedBox(height: 10),
              itemBuilder: (context, index) {
                final detail = personalDetails[index];
                final detailKey = detail.keys.first;
                final detailValue = detail.values.first;
                return Text(
                  "$detailKey : $detailValue",
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500),
                );
              },
            )
          ],
        ),
      ),
    );
  }
}
