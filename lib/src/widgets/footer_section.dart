import 'package:excursy/src/res/colors.dart';
import 'package:excursy/src/responsive.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class FooterSection extends StatelessWidget {
  const FooterSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.darkBlack,
      height: (Responsive.isMobile(context)) ? 376 : 302,
      child: Stack(
        fit: StackFit.expand,
        children: [
          Container(
            height: 302,
            color: const Color(0xff2B2B2B),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Spacer(),
              SizedBox(
                height: 62,
                width: 195,
                child: SvgPicture.asset(
                  'assets/svg/logo_footer.svg',
                  height: 62,
                  width: 195,
                ),
              ),
              const SizedBox(
                height: 40,
              ),
              Wrap(
                crossAxisAlignment: WrapCrossAlignment.center,
                spacing: 28,
                children: [
                  SizedBox(
                    height: 36,
                    width: 36,
                    child: SvgPicture.asset(
                      'assets/svg/social/facebook.svg',
                      height: 36,
                      width: 36,
                    ),
                  ),
                  SizedBox(
                    height: 36,
                    width: 36,
                    child: SvgPicture.asset(
                      'assets/svg/social/twitch.svg',
                      height: 36,
                      width: 36,
                    ),
                  ),
                  SizedBox(
                    height: 36,
                    width: 36,
                    child: SvgPicture.asset(
                      'assets/svg/social/linkedin.svg',
                      height: 36,
                      width: 36,
                    ),
                  ),
                  SizedBox(
                    height: 36,
                    width: 36,
                    child: SvgPicture.asset(
                      'assets/svg/social/github.svg',
                      height: 36,
                      width: 36,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 40),
              Wrap(
                crossAxisAlignment: WrapCrossAlignment.center,
                spacing: (Responsive.isMobile(context)) ? 50 : 40,
                runSpacing: (Responsive.isMobile(context)) ? 35 : 40,
                children: const [
                  Text(
                    "Home",
                    style: TextStyle(
                        color: AppColors.white,
                        fontWeight: FontWeight.w500,
                        fontSize: 18),
                  ),
                  Text(
                    "About us",
                    style: TextStyle(
                        color: AppColors.white,
                        fontWeight: FontWeight.w500,
                        fontSize: 18),
                  ),
                  Text(
                    "Our interests",
                    style: TextStyle(
                        color: AppColors.white,
                        fontWeight: FontWeight.w500,
                        fontSize: 18),
                  ),
                  Text(
                    "Values",
                    style: TextStyle(
                        color: AppColors.white,
                        fontWeight: FontWeight.w500,
                        fontSize: 18),
                  ),
                  Text(
                    "Current Projects",
                    style: TextStyle(
                        color: AppColors.white,
                        fontWeight: FontWeight.w500,
                        fontSize: 18),
                  ),
                ],
              ),
              const SizedBox(height: 40)
            ],
          )
        ],
      ),
    );
  }
}
