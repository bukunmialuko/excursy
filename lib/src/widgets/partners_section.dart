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
          SizedBox(
            width: 1035,
            height: 57,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  width: (Responsive.isMobile(context)) ? 70 : 169,
                  child: SvgPicture.asset(
                    "assets/svg/microsoft.svg",
                    width: (Responsive.isMobile(context)) ? 70 : 169,
                    height: (Responsive.isMobile(context)) ? 14 : 43,
                  ),
                ),
                const _PartnerSpacer(),
                SizedBox(
                  width: (Responsive.isMobile(context)) ? 70 : 169,
                  child: SvgPicture.asset(
                    "assets/svg/microsoft.svg",
                    width: (Responsive.isMobile(context)) ? 70 : 169,
                    height: (Responsive.isMobile(context)) ? 14 : 43,
                  ),
                ),
                const _PartnerSpacer(),
                SizedBox(
                  width: (Responsive.isMobile(context)) ? 70 : 169,
                  child: SvgPicture.asset(
                    "assets/svg/microsoft.svg",
                    width: (Responsive.isMobile(context)) ? 70 : 169,
                    height: (Responsive.isMobile(context)) ? 14 : 43,
                  ),
                ),
                const _PartnerSpacer(),
                SizedBox(
                  width: 175,
                  child: SvgPicture.asset(
                    "assets/svg/microsoft.svg",
                    width: (Responsive.isMobile(context)) ? 70 : 169,
                    height: (Responsive.isMobile(context)) ? 14 : 43,
                  ),
                ),
              ],
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
      height: (Responsive.isMobile(context)) ? 0 : 57,
      width: (Responsive.isMobile(context)) ? 0 : 2,
      margin: const EdgeInsets.symmetric(horizontal: 48),
      color: const Color(0xffC0C5D2),
    );
  }
}
