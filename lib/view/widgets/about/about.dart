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
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            Text(
              "I'm Abhinandhana P U ,\nA Flutter Developer",
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.w600),
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
            Divider(color: CustomColor.whitePrimary),
            Text(
              "Technologies I have worked with : ",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
            ),
            ListView.builder(
              physics: NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              padding: EdgeInsets.all(0),
              itemCount: techList.length,
              itemBuilder: (context, index) {
                return ListTile(
                  horizontalTitleGap: 5,
                  leading: CircleAvatar(
                    radius: 3,
                    backgroundColor: CustomColor.whitePrimary,
                  ),
                  title: Text(techList[index]),
                );
              },
            ),
            Divider(color: CustomColor.whitePrimary),
            Text(
              "Tools I'm familiar with: ",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
            ),
            // tools list
            ListView.builder(
              physics: NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              padding: EdgeInsets.all(0),
              itemCount: toolList.length,
              itemBuilder: (context, index) {
                return ListTile(
                  horizontalTitleGap: 5,
                  leading: CircleAvatar(
                    radius: 3,
                    backgroundColor: CustomColor.whitePrimary,
                  ),
                  title: Text(toolList[index]),
                );
              },
            ),
            Divider(color: CustomColor.whitePrimary),
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
                  style: TextStyle(fontSize: 17, fontWeight: FontWeight.w500),
                );
              },
            )
          ],
        ),
      ),
    );
  }
}
