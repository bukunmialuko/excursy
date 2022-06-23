import 'package:excursy/src/responsive.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class PartnersSection extends StatefulWidget {
  const PartnersSection({Key? key}) : super(key: key);

  @override
  State<PartnersSection> createState() => _PartnersSectionState();
}

class _PartnersSectionState extends State<PartnersSection> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // SizedBox(
          //   width: (Responsive.isMobile(context)) ? 35 : 0,
          // ),
          SizedBox(
            width: (Responsive.isMobile(context)) ? 50 : 169,
            child: SvgPicture.asset(
              "assets/svg/partners/slack.svg",
              width: (Responsive.isMobile(context)) ? 50 : 169,
              height: (Responsive.isMobile(context)) ? 13 : 157,
              fit: BoxFit.fitWidth,
            ),
          ),
          const _PartnerSpacer(),
          SizedBox(
            width: (Responsive.isMobile(context)) ? 50 : 169,
            child: SvgPicture.asset(
              "assets/svg/microsoft.svg",
              width: (Responsive.isMobile(context)) ? 50 : 169,
              height: (Responsive.isMobile(context)) ? 13 : 157,
            ),
          ),
          const _PartnerSpacer(),
          SizedBox(
            width: (Responsive.isMobile(context)) ? 50 : 169,
            child: SvgPicture.asset(
              "assets/svg/partners/slack.svg",
              width: (Responsive.isMobile(context)) ? 50 : 169,
              height: (Responsive.isMobile(context)) ? 13 : 157,
            ),
          ),
          const _PartnerSpacer(),
          SizedBox(
            width: (Responsive.isMobile(context)) ? 50 : 169,
            child: SvgPicture.asset(
              "assets/svg/microsoft.svg",
              width: (Responsive.isMobile(context)) ? 50 : 169,
              height: (Responsive.isMobile(context)) ? 13 : 157,
            ),
          ),
        ],
      ),
    );
  }
}

class _PartnerSpacer extends StatelessWidget {
  const _PartnerSpacer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 57,
      width: (Responsive.isMobile(context)) ? 0 : 2,
      margin: EdgeInsets.symmetric(
          horizontal: (Responsive.isMobile(context)) ? 28 : 48),
      color: const Color(0xffC0C5D2),
    );
  }
}
