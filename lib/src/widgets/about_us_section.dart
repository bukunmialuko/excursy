import 'package:excursy/src/res/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class AboutUsSection extends StatefulWidget {
  const AboutUsSection({Key? key}) : super(key: key);

  @override
  State<AboutUsSection> createState() => _AboutUsSectionState();
}

class _AboutUsSectionState extends State<AboutUsSection> {
  @override
  Widget build(BuildContext context) {
    return Wrap(
      crossAxisAlignment: WrapCrossAlignment.center,
      children: [
        Container(
          color: Colors.orange,
          width: 105,
          // height: 1,
        ),
        const _LeftSection(),
        const SizedBox(width: 30),
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
      width: 546,
      child: SvgPicture.asset(
        "assets/svg/about_us.svg",
        width: 546,
        height: 331,
      ),
    );
  }
}

class _RightSection extends StatelessWidget {
  const _RightSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 639,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            "About Us",
            style: TextStyle(
                color: AppColors.darkBlack,
                fontWeight: FontWeight.w800,
                fontSize: 52),
          ),
          const SizedBox(height: 35),
          const Text(
            "We generated names based on a multitude of factors and picked the one that resonated with us the most. Our founder first engaged with the blockchain in 2013",
            style: TextStyle(
                color: AppColors.darkGrey,
                fontWeight: FontWeight.w400,
                fontSize: 20),
          ),
          const SizedBox(height: 35),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 26, vertical: 18),
            color: AppColors.white,
            child: Row(
              children: const [
                _AboutItem(
                  title: 'Project Done',
                  count: '600+',
                ),
                _AboutUsSpacer(),
                _AboutItem(
                  title: 'Happy Clients',
                  count: '950+',
                ),
                _AboutUsSpacer(),
                _AboutItem(
                  title: 'Employee',
                  count: '30+',
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}

class _AboutItem extends StatelessWidget {
  final String title;
  final String count;
  const _AboutItem({
    Key? key,
    required this.title,
    required this.count,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            title,
            style: const TextStyle(
                color: AppColors.darkGrey,
                fontWeight: FontWeight.w600,
                fontSize: 23),
          ),
          Text(
            count,
            style: const TextStyle(
                color: AppColors.orange,
                fontWeight: FontWeight.w700,
                fontSize: 40),
          ),
        ],
      ),
    );
  }
}

class _AboutUsSpacer extends StatelessWidget {
  const _AboutUsSpacer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      width: 3,
      margin: EdgeInsets.symmetric(horizontal: 30),
      color: AppColors.orange,
    );
  }
}
