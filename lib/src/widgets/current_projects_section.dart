import 'package:excursy/src/res/colors.dart';
import 'package:excursy/src/responsive.dart';
import 'package:flutter/material.dart';

class CurrentProjectsSection extends StatelessWidget {
  const CurrentProjectsSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          "Current Projects",
          style: TextStyle(
              color: Responsive.isMobile(context)
                  ? AppColors.orange
                  : AppColors.darkBlack,
              fontWeight: FontWeight.w800,
              fontSize: (Responsive.isMobile(context)) ? 24 : 52),
        ),
        const SizedBox(height: 84),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 120),
          child: Wrap(
            spacing: 30,
            crossAxisAlignment: WrapCrossAlignment.center,
            children: const [
              _OurInterestItem(
                assetName: 'assets/png/current_project_1.png',
                title: 'Certified Great Expectations Lover ',
                subTitle:
                    'Certified Great Expectations Lover - To add value to ',
              ),
              _OurInterestItem(
                assetName: 'assets/png/current_project_2.png',
                title: 'BlockSpace - \nA solar System ',
                subTitle:
                    'BlockSpace - We built the first ever accurate model of ',
              ),
              _OurInterestItem(
                assetName: 'assets/png/current_project_1.png',
                title: '0xProxy - \nA web 3.0 Website',
                subTitle:
                    'BlockSpace - This project was a collaborative exercise',
              ),
            ],
          ),
        )
      ],
    );
  }
}

class _OurInterestItem extends StatelessWidget {
  final String assetName;
  final String title;
  final String subTitle;

  const _OurInterestItem(
      {Key? key,
      required this.assetName,
      required this.title,
      required this.subTitle})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 378,
      // color: AppColors.white,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: 378,
            height: 378,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(assetName),
                fit: BoxFit.cover,
              ),
            ),
          ),
          const SizedBox(height: 24),
          Text(
            title,
            style: const TextStyle(
                color: AppColors.darkBlack,
                fontWeight: FontWeight.w600,
                fontSize: 28),
          ),
          const SizedBox(height: 24),
          RichText(
            text: TextSpan(
              text: subTitle,
              style: const TextStyle(
                color: AppColors.darkGrey,
                fontSize: 20,
                fontWeight: FontWeight.w400,
              ),
              children: const <TextSpan>[
                TextSpan(
                  text: ' Read more',
                  style: TextStyle(
                    color: AppColors.orange,
                    fontWeight: FontWeight.w600,
                    fontSize: 18,
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
