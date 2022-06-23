import 'package:excursy/src/res/colors.dart';
import 'package:excursy/src/responsive.dart';
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
    return (Responsive.isMobile(context))
        ? Column(
            // crossAxisAlignment: WrapCrossAlignment.center,
            // alignment: WrapAlignment.end,
            children: const [
              _AboutUsText(),
              _Image(),
              SizedBox(height: 16),
              _Frame111(),
            ],
          )
        : Wrap(
            crossAxisAlignment: WrapCrossAlignment.center,
            alignment: WrapAlignment.end,
            children: [
              Container(
                color: Colors.orange,
                width: 105,
                // height: 1,
              ),
              const _Image(),
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

class _Image extends StatelessWidget {
  const _Image({Key? key}) : super(key: key);

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
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: const [
          _AboutUsText(),
          SizedBox(height: 35),
          _Frame100(),
        ],
      ),
    );
  }
}

class _AboutUsText extends StatelessWidget {
  const _AboutUsText({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 639,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            "About Us",
            textAlign: (Responsive.isMobile(context))
                ? TextAlign.center
                : TextAlign.start,
            style: TextStyle(
                color: AppColors.darkBlack,
                fontWeight: FontWeight.w800,
                fontSize: (Responsive.isMobile(context)) ? 24 : 52),
          ),
          SizedBox(height: (Responsive.isMobile(context)) ? 16 : 35),
          Padding(
            padding: (Responsive.isMobile(context))
                ? const EdgeInsets.symmetric(horizontal: 26)
                : EdgeInsets.zero,
            child: Text(
              "We generated names based on a multitude of factors and picked the one that resonated with us the most. Our founder first engaged with the blockchain in 2013",
              textAlign: (Responsive.isMobile(context))
                  ? TextAlign.center
                  : TextAlign.start,
              style: TextStyle(
                  color: AppColors.darkGrey,
                  fontWeight: FontWeight.w400,
                  height: 1.6,
                  fontSize: (Responsive.isMobile(context)) ? 12 : 20),
            ),
          ),
        ],
      ),
    );
  }
}

class _Frame100 extends StatelessWidget {
  const _Frame100({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 26, vertical: 18),
      color: AppColors.white,
      child: Row(
        children: const [
          _Frame100Item(
            title: 'Project Done',
            count: '600+',
          ),
          _Frame100ItemSpacer(),
          _Frame100Item(
            title: 'Happy Clients',
            count: '950+',
          ),
          _Frame100ItemSpacer(),
          _Frame100Item(
            title: 'Employee',
            count: '30+',
          )
        ],
      ),
    );
  }
}

class _Frame100Item extends StatelessWidget {
  final String title;
  final String count;
  const _Frame100Item({
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

class _Frame100ItemSpacer extends StatelessWidget {
  const _Frame100ItemSpacer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      width: 3,
      margin: const EdgeInsets.symmetric(horizontal: 30),
      color: AppColors.orange,
    );
  }
}

class _Frame111 extends StatelessWidget {
  const _Frame111({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: 20,
      ),
      child: Column(
        children: const [
          _Frame111Item(
            count: '600+',
            title: 'Project Done',
          ),
          SizedBox(
            height: 16,
          ),
          _Frame111Spacer(),
          SizedBox(
            height: 32,
          ),
          _Frame111Item(
            title: 'Happy Clients',
            count: '950+',
          ),
          SizedBox(
            height: 16,
          ),
          _Frame111Spacer(),
          SizedBox(
            height: 32,
          ),
          _Frame111Item(
            title: 'Employee',
            count: '30+',
          ),
        ],
      ),
    );
  }
}

class _Frame111Item extends StatelessWidget {
  final String title;
  final String count;
  const _Frame111Item({
    Key? key,
    required this.title,
    required this.count,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Expanded(
          flex: 1,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                width: 64,
                padding: const EdgeInsets.symmetric(
                  horizontal: 9,
                  vertical: 10,
                ),
                decoration: BoxDecoration(
                    color: const Color(0xffFFEDE6),
                    borderRadius: BorderRadius.circular(6)),
                child: Center(
                  child: Text(
                    count,
                    style: const TextStyle(
                        color: AppColors.orange,
                        fontWeight: FontWeight.w700,
                        fontSize: 18),
                  ),
                ),
              ),
              const SizedBox(
                width: 30,
              ),
            ],
          ),
        ),
        Expanded(
          child: Text(
            title,
            style: const TextStyle(
                color: AppColors.darkGrey,
                fontWeight: FontWeight.w500,
                fontSize: 16),
          ),
        ),
      ],
    );
  }
}

class _Frame111Spacer extends StatelessWidget {
  const _Frame111Spacer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.orange,
      height: 2,
      width: double.infinity,
    );
  }
}
