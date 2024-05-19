import 'package:flutter/material.dart';
import 'package:my_portfolio/model/contact_model.dart';
import 'package:my_portfolio/utils/constants/color_const.dart';

class ContactCard extends StatelessWidget {
  const ContactCard({
    super.key,
    required this.contact,
  });
  final ContactModel contact;
  @override
  Widget build(BuildContext context) {
    return Container(
      clipBehavior: Clip.antiAlias,
      height: 220,
      width: 220,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: CustomColor.bgLight2,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            height: 70,
            width: 60,
            child: Image.asset(contact.icon),
          ),
          SizedBox(
            height: 20,
          ),
          // title
          Text(
            contact.title,
            style: const TextStyle(
              fontWeight: FontWeight.w700,
              color: CustomColor.whiteSecondary,
            ),
          ),
          SizedBox(
            height: 10,
          ), // subtitle
          Text(
            contact.data,
            textAlign: TextAlign.justify,
            style: const TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.w500,
              color: CustomColor.whitePrimary,
            ),
          ),
        ],
      ),
    );
  }
}
