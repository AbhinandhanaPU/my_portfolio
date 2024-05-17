import 'package:flutter/material.dart';
import 'package:my_portfolio/model/contact_model.dart';
import 'package:my_portfolio/utils/constants/color_const.dart';
import 'package:my_portfolio/view/widgets/contact/contact_card.dart';

class ContactSection extends StatelessWidget {
  const ContactSection({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    return SingleChildScrollView(
      child: Container(
        padding: EdgeInsets.only(top: 50, left: 10, right: 10),
        width: screenWidth,
        child: Column(
          children: [
            const Text(
              "Contact",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w700,
                color: CustomColor.whitePrimary,
              ),
            ),
            const SizedBox(height: 20),
            SizedBox(
              width: screenWidth * 3 / 4,
              child: const Text(
                "Hey! I appreciate you looking at my public profile. Please feel free to ask me anything or to discuss anything with me. Regardless of the fact that I don't use social media much, you can find me there. So find me and get in touch with me. Send me an email if you need to discuss anything serious with me. I'll get back to you in 12 to 24 hours.",
                textAlign: TextAlign.justify,
                style: TextStyle(
                  fontSize: 15,
                  color: CustomColor.whiteSecondary,
                ),
              ),
            ),
            const SizedBox(height: 50),

            // contact cards
            ConstrainedBox(
              constraints: BoxConstraints(maxWidth: screenWidth * 4 / 5),
              child: Wrap(
                spacing: 25,
                runSpacing: 25,
                children: [
                  for (int i = 0; i < contactDetails.length; i++)
                    ContactCard(
                      contact: contactDetails[i],
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
