import 'package:excursy/src/res/colors.dart';
import 'package:excursy/src/responsive.dart';
import 'package:excursy/src/shared/exc_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class GetStartedSection extends StatefulWidget {
  const GetStartedSection({Key? key}) : super(key: key);

  @override
  State<GetStartedSection> createState() => _GetStartedSectionState();
}

class _GetStartedSectionState extends State<GetStartedSection> {
  @override
  Widget build(BuildContext context) {
    return (Responsive.isMobile(context))
        ? Column(
            children: const [
              _Text(),
              SizedBox(height: 30),
              _Image(),
              SizedBox(height: 39),
              _Buttons()
            ],
          )
        : Wrap(
            crossAxisAlignment: WrapCrossAlignment.center,
            children: [
              Container(
                color: Colors.orange,
                width: 120,
                // height: 1,
              ),
              const _LeftSection(),
              const SizedBox(width: 91),
              const _Image(),
            ],
          );
  }
}

class _LeftSection extends StatelessWidget {
  const _LeftSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 502,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: const [_Text(), SizedBox(height: 74), _Buttons()],
      ),
    );
  }
}

class _Text extends StatelessWidget {
  const _Text({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        SizedBox(
          width: 502,
          child: RichText(
            textAlign: (Responsive.isMobile(context))
                ? TextAlign.center
                : TextAlign.start,
            text: TextSpan(
              text: 'Let’s take a \ntour to ',
              style: TextStyle(
                color: AppColors.darkBlack,
                fontSize: (Responsive.isMobile(context)) ? 36 : 56,
                fontWeight: FontWeight.w800,
              ),
              children: <TextSpan>[
                TextSpan(
                  text: 'Blockchain',
                  style: TextStyle(
                    color: AppColors.orange,
                    fontSize: (Responsive.isMobile(context)) ? 36 : 56,
                    fontWeight: FontWeight.w800,
                  ),
                ),
                TextSpan(
                  text: '\nTechnology',
                  style: TextStyle(
                    color: AppColors.darkBlack,
                    fontSize: (Responsive.isMobile(context)) ? 36 : 56,
                    fontWeight: FontWeight.w800,
                  ),
                ),
              ],
            ),
          ),
        ),
        SizedBox(height: (Responsive.isMobile(context)) ? 20 : 36),
        Padding(
          padding: (Responsive.isMobile(context))
              ? const EdgeInsets.all(8.0)
              : EdgeInsets.zero,
          child: SizedBox(
            width: 502,
            child: Text(
              "We are highly focused by blockchain technology that will lead positively to the future web.",
              textAlign: (Responsive.isMobile(context))
                  ? TextAlign.center
                  : TextAlign.start,
              style: TextStyle(
                color: (Responsive.isMobile(context))
                    ? AppColors.darkGrey
                    : AppColors.orange,
                fontWeight: FontWeight.w400,
                fontSize: (Responsive.isMobile(context)) ? 14 : 18,
              ),
            ),
          ),
        ),
      ],
    );
  }
}

class _Image extends StatelessWidget {
  const _Image({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: (Responsive.isMobile(context))
          ? const EdgeInsets.symmetric(horizontal: 33)
          : EdgeInsets.zero,
      child: SizedBox(
        width: 719,
        child: SvgPicture.asset(
          "assets/svg/people1.svg",
          height: (Responsive.isMobile(context)) ? 164 : 390,
        ),
      ),
    );
  }
}

class _Buttons extends StatelessWidget {
  const _Buttons({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 502,
      child: Row(
        mainAxisAlignment: (Responsive.isMobile(context))
            ? MainAxisAlignment.center
            : MainAxisAlignment.start,
        children: [
          Center(
            child: EXCButton(
              width: (Responsive.isMobile(context)) ? 161 : 208,
              height: (Responsive.isMobile(context)) ? 48 : 64,
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    "Get Started",
                    style: TextStyle(
                        color: AppColors.white,
                        fontWeight: FontWeight.w700,
                        fontSize: (Responsive.isMobile(context)) ? 14 : 16),
                  ),
                  const SizedBox(width: 8),
                  const Icon(Icons.chevron_right_rounded)
                ],
              ),
              onPressed: () => {},
            ),
          ),
          const Flexible(child: SizedBox(width: 32)),
          Center(
            child: EXCButton(
              width: (Responsive.isMobile(context)) ? 161 : 208,
              height: (Responsive.isMobile(context)) ? 48 : 64,
              color: AppColors.white,
              borderColor: AppColors.orange,
              child: Text(
                "Learn more",
                style: TextStyle(
                    color: AppColors.darkBlack,
                    fontWeight: FontWeight.w700,
                    fontSize: (Responsive.isMobile(context)) ? 14 : 16),
              ),
              onPressed: () => {},
            ),
          )
        ],
      ),
    );
  }
}
