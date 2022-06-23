import 'package:excursy/src/res/colors.dart';
import 'package:excursy/src/responsive.dart';
import 'package:excursy/src/shared/exc_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class HeaderSection extends StatelessWidget {
  const HeaderSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Responsive.isMobile(context)
        ? Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                color: Colors.orange,
                width: 16,
                // height: 1,
              ),
              SvgPicture.asset(
                "assets/svg/logo.svg",
                width: 44,
                height: 44,
              ),
              const SizedBox(width: 10),
              const Text(
                "Excursy",
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: AppColors.darkGrey,
                    fontWeight: FontWeight.w700,
                    fontSize: 24),
              ),
              const Spacer(),
              SvgPicture.asset(
                "assets/svg/drawer.svg",
                width: 29,
                height: 24,
              ),
              Container(
                color: Colors.orange,
                width: 16,
                // height: 1,
              ),
            ],
          )
        : Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                color: Colors.orange,
                width: 120,
                // height: 1,
              ),
              const Flexible(
                child: HeaderWidget(),
              ),
              Container(
                color: Colors.orange,
                width: 120,
                // height: 1,
              ),
            ],
          );
  }
}

class HeaderWidget extends StatelessWidget {
  const HeaderWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 76,
      child: Wrap(
        crossAxisAlignment: WrapCrossAlignment.center,
        children: [
          SvgPicture.asset(
            "assets/svg/logo_large.svg",
            width: 239,
            height: 76,
          ),
          SizedBox(width: 110),
          const Text(
            "Home",
            style: TextStyle(
                color: AppColors.orange,
                fontWeight: FontWeight.w700,
                fontSize: 18),
          ),
          SizedBox(width: 48),
          const Text(
            "About us",
            style: TextStyle(
                color: AppColors.darkBlack,
                fontWeight: FontWeight.w400,
                fontSize: 18),
          ),
          SizedBox(width: 48),
          const Text(
            "Our interests",
            style: TextStyle(
                color: AppColors.darkBlack,
                fontWeight: FontWeight.w400,
                fontSize: 18),
          ),
          SizedBox(width: 48),
          const Text(
            "Values",
            style: TextStyle(
                color: AppColors.darkBlack,
                fontWeight: FontWeight.w400,
                fontSize: 18),
          ),
          SizedBox(width: 48),
          const Text(
            "Current Projects",
            style: TextStyle(
                color: AppColors.darkBlack,
                fontWeight: FontWeight.w400,
                fontSize: 18),
          ),
          SizedBox(width: 79),
          EXCButton(
            width: 146,
            height: 55,
            child: const Text(
              "Sign Up",
              style: TextStyle(
                  color: AppColors.white,
                  fontWeight: FontWeight.w700,
                  fontSize: 16),
            ),
            onPressed: () => {},
          )
        ],
      ),
    );
  }
}
