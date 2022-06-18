import 'package:excursy/src/res/colors.dart';
import 'package:excursy/src/responsive.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class OurInterestsSection extends StatelessWidget {
  const OurInterestsSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const _Text(),
        SizedBox(height: (Responsive.isMobile(context)) ? 18 : 65),
        if (Responsive.isMobile(context)) ...[
          const _MobileInterests()
        ] else ...[
          const _WebInterests(),
        ],
      ],
    );
  }
}

class _Text extends StatelessWidget {
  const _Text({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          "Our Interests",
          style: TextStyle(
              color: AppColors.darkBlack,
              fontWeight: FontWeight.w800,
              fontSize: (Responsive.isMobile(context)) ? 24 : 52),
        ),
        SizedBox(height: (Responsive.isMobile(context)) ? 16 : 35),
        Container(
          width: 765,
          padding: const EdgeInsets.symmetric(horizontal: 18),
          child: Text(
            "It's the norm these days to lay out a roadmap that gives stakeholders an indication of the direction that the project aspires to go. Inspired by Elon Musk’s 2006 masterplan, these are our skeleton ambitions.",
            textAlign: TextAlign.center,
            style: TextStyle(
                color: AppColors.darkGrey,
                fontWeight: FontWeight.w400,
                fontSize: (Responsive.isMobile(context)) ? 12 : 20),
          ),
        ),
      ],
    );
  }
}

class _WebInterests extends StatelessWidget {
  const _WebInterests({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 121),
      child: Wrap(
        spacing: 30,
        crossAxisAlignment: WrapCrossAlignment.center,
        runSpacing: 24,
        children: const [
          _WebItem(
            assetName: 'assets/svg/our_interest_1.svg',
            title: 'Blockchain product ',
            subTitle:
                'Create something novel that has never been done on the blockchain before Build a product',
          ),
          _WebItem(
            assetName: 'assets/svg/our_interest_2.svg',
            title: 'Quality product',
            subTitle:
                'Create something novel that has never been done on the blockchain before Build a product',
          ),
          _WebItem(
            assetName: 'assets/svg/our_interest_3.svg',
            title: 'Viable product',
            subTitle:
                'Create something novel that has never been done on the blockchain before Build a product',
          ),
        ],
      ),
    );
  }
}

class _WebItem extends StatelessWidget {
  final String assetName;
  final String title;
  final String subTitle;

  const _WebItem(
      {Key? key,
      required this.assetName,
      required this.title,
      required this.subTitle})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 379,
      padding: const EdgeInsets.symmetric(
        horizontal: 44,
        vertical: 40,
      ),
      color: AppColors.white,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            width: 40,
            height: 40,
            child: SvgPicture.asset(assetName),
          ),
          const SizedBox(height: 24),
          Text(
            title,
            style: const TextStyle(
                color: AppColors.darkBlack,
                fontWeight: FontWeight.w700,
                fontSize: 28),
          ),
          const SizedBox(height: 24),
          Text(
            subTitle,
            style: const TextStyle(
                height: 1.6,
                color: AppColors.darkGrey,
                fontWeight: FontWeight.w400,
                fontSize: 18),
          ),
          const SizedBox(height: 32),
          const Text(
            'Read More',
            style: TextStyle(
                color: AppColors.orange,
                fontWeight: FontWeight.w600,
                fontSize: 18),
          ),
        ],
      ),
    );
  }
}

class _MobileInterests extends StatelessWidget {
  const _MobileInterests({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: const [
        _MobileItem(
          assetName: 'assets/svg/our_interest_1.svg',
          title: 'Blockchain product ',
          subTitle:
              'Create something novel that has never been done on the blockchain before Build a product',
        ),
        SizedBox(
          height: 24,
        ),
        _MobileItem(
          assetName: 'assets/svg/our_interest_2.svg',
          title: 'Quality product',
          subTitle:
              'Create something novel that has never been done on the blockchain before Build a product',
        ),
        SizedBox(
          height: 24,
        ),
        _MobileItem(
          assetName: 'assets/svg/our_interest_3.svg',
          title: 'Viable product',
          subTitle:
              'Create something novel that has never been done on the blockchain before Build a product',
        ),
      ],
    );
  }
}

class _MobileItem extends StatelessWidget {
  final String assetName;
  final String title;
  final String subTitle;
  const _MobileItem(
      {Key? key,
      required this.assetName,
      required this.title,
      required this.subTitle})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 160,
      color: AppColors.white,
      margin: const EdgeInsets.symmetric(horizontal: 16),
      padding: const EdgeInsets.only(left: 24, top: 24, bottom: 24, right: 65),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            width: 40,
            height: 40,
            child: SvgPicture.asset(assetName),
          ),
          const SizedBox(width: 16),
          Flexible(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  overflow: TextOverflow.ellipsis,
                  style: const TextStyle(
                      height: 1.6,
                      color: AppColors.darkBlack,
                      fontWeight: FontWeight.w700,
                      fontSize: 18),
                ),
                Text(
                  subTitle,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: const TextStyle(
                      color: AppColors.darkGrey,
                      fontWeight: FontWeight.w400,
                      fontSize: 12),
                ),
                const Text(
                  'Read More...',
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                      color: AppColors.orange,
                      fontWeight: FontWeight.w600,
                      fontSize: 14),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
