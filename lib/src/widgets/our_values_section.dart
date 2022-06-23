import 'package:excursy/src/res/colors.dart';
import 'package:excursy/src/responsive.dart';
import 'package:excursy/src/shared/exc_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class OurValuesSection extends StatefulWidget {
  const OurValuesSection({Key? key}) : super(key: key);

  @override
  State<OurValuesSection> createState() => _OurValuesSectionState();
}

class _OurValuesSectionState extends State<OurValuesSection> {
  @override
  Widget build(BuildContext context) {
    return Wrap(
      crossAxisAlignment: WrapCrossAlignment.center,
      children: [
        Container(
          color: Colors.orange,
          width: 122,
          // height: 1,
        ),
        const _LeftSection(),
        const SizedBox(width: 69),
        const _RightSection(),
        Container(
          color: Colors.orange,
          width: 120,
          // height: 1,
        ),
      ],
    );
  }
}

class _LeftSection extends StatelessWidget {
  const _LeftSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 514,
      height: 352,
      child: SvgPicture.asset(
        "assets/svg/our_values.svg",
        width: 546,
        height: 352,
      ),
    );
  }
}

class _RightSection extends StatelessWidget {
  const _RightSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 614,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          SizedBox(height: (Responsive.isMobile(context)) ? 16 : 0),
          Text(
            "Our Values",
            textAlign: (Responsive.isMobile(context))
                ? TextAlign.center
                : TextAlign.start,
            style: TextStyle(
                color: AppColors.darkBlack,
                fontWeight: FontWeight.w800,
                fontSize: (Responsive.isMobile(context)) ? 24 : 52),
          ),
          const SizedBox(height: 35),
          Padding(
            padding: (Responsive.isMobile(context))
                ? const EdgeInsets.symmetric(horizontal: 16)
                : EdgeInsets.zero,
            child: Text(
              'anftw is a hallmark. The team members may change, but the quality of our project execution will not.An outstanding team can build a product in any industry. Don’t be intimidated by incumbents.',
              textAlign: (Responsive.isMobile(context))
                  ? TextAlign.center
                  : TextAlign.start,
              style: TextStyle(
                  color: AppColors.darkGrey,
                  fontWeight: FontWeight.w400,
                  fontSize: (Responsive.isMobile(context)) ? 12 : 20),
            ),
          ),
          const SizedBox(height: 35),
          Row(
            mainAxisAlignment: (Responsive.isMobile(context))
                ? MainAxisAlignment.center
                : MainAxisAlignment.start,
            children: [
              Center(
                child: EXCButton(
                  width: 161,
                  height: 54,
                  child: const Text(
                    "Read More",
                    style: TextStyle(
                        color: AppColors.white,
                        fontWeight: FontWeight.w700,
                        fontSize: 16),
                  ),
                  onPressed: () => {},
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
