import 'dart:js' as js;

import 'package:flutter/material.dart';
import 'package:my_portfolio/model/certifiacates_model.dart';
import 'package:my_portfolio/utils/constants/color_const.dart';

class CertificatesCard extends StatelessWidget {
  const CertificatesCard({super.key, required this.skillData});
  final CertificateModel skillData;
  @override
  Widget build(BuildContext context) {
    return Container(
      clipBehavior: Clip.antiAlias,
      height: 220,
      width: 300,
      padding: EdgeInsets.only(left: 12, right: 12, top: 15, bottom: 10),
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: CustomColor.whiteSecondary,
            offset: Offset(0, 0),
            blurRadius: 6,
          ),
        ],
        borderRadius: BorderRadius.circular(10),
        color: CustomColor.bgLight2,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // title
          Text(
            skillData.title,
            style: const TextStyle(
              fontWeight: FontWeight.w700,
              color: CustomColor.whitePrimary,
            ),
          ),
          // subtitle
          Padding(
            padding: const EdgeInsets.only(top: 15),
            child: Text(
              skillData.sub,
              textAlign: TextAlign.justify,
              style: const TextStyle(
                fontSize: 13,
                fontWeight: FontWeight.w500,
                color: CustomColor.whiteSecondary,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10, bottom: 10),
            child: Text(
              skillData.time,
              textAlign: TextAlign.justify,
              style: const TextStyle(
                fontSize: 13,
                fontWeight: FontWeight.w500,
                color: CustomColor.whiteSecondary,
              ),
            ),
          ),
          Spacer(),
          // footer
          InkWell(
              onTap: () {
                js.context.callMethod("open", [skillData.link]);
              },
              child: Container(
                decoration: BoxDecoration(
                    color: CustomColor.scaffoldBg,
                    borderRadius: BorderRadius.circular(15)),
                padding: EdgeInsets.symmetric(horizontal: 40, vertical: 10),
                child: Text("Credentials"),
              ))
        ],
      ),
    );
  }
}
