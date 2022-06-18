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
                  width: 169,
                  child: SvgPicture.asset(
                    "assets/svg/microsoft.svg",
                    width: 169,
                    height: 43,
                  ),
                ),
                const _PartnerSpacer(),
                SizedBox(
                  width: 169,
                  child: SvgPicture.asset(
                    "assets/svg/microsoft.svg",
                    width: 169,
                    height: 43,
                  ),
                ),
                const _PartnerSpacer(),
                SizedBox(
                  width: 169,
                  child: SvgPicture.asset(
                    "assets/svg/microsoft.svg",
                    width: 169,
                    height: 43,
                  ),
                ),
                const _PartnerSpacer(),
                SizedBox(
                  width: 175,
                  child: SvgPicture.asset(
                    "assets/svg/microsoft.svg",
                    width: 175,
                    height: 43,
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
      height: 57,
      width: 2,
      margin: const EdgeInsets.symmetric(horizontal: 48),
      color: const Color(0xffC0C5D2),
    );
  }
}
