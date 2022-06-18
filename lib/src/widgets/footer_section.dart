import 'package:excursy/src/res/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class FooterSection extends StatelessWidget {
  const FooterSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.darkBlack,
      height: 302.h,
      child: Stack(
        fit: StackFit.expand,
        children: [
          SvgPicture.asset('assets/svg/footer_bg.svg'),
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Spacer(),
              SizedBox(
                height: 62.h,
                width: 195.w,
                child: SvgPicture.asset(
                  'assets/svg/logo_footer.svg',
                  height: 62.h,
                  width: 195.w,
                ),
              ),
              SizedBox(
                height: 40.h,
              ),
              Wrap(
                crossAxisAlignment: WrapCrossAlignment.center,
                spacing: 28.w,
                children: [
                  SizedBox(
                    height: 36.w,
                    width: 36.w,
                    child: SvgPicture.asset(
                      'assets/svg/social/facebook.svg',
                      height: 36.w,
                      width: 36.w,
                    ),
                  ),
                  SizedBox(
                    height: 36.w,
                    width: 36.w,
                    child: SvgPicture.asset(
                      'assets/svg/social/twitch.svg',
                      height: 36.w,
                      width: 36.w,
                    ),
                  ),
                  SizedBox(
                    height: 36.w,
                    width: 36.w,
                    child: SvgPicture.asset(
                      'assets/svg/social/linkedin.svg',
                      height: 36.w,
                      width: 36.w,
                    ),
                  ),
                  SizedBox(
                    height: 36.w,
                    width: 36.w,
                    child: SvgPicture.asset(
                      'assets/svg/social/facebook.svg',
                      height: 36.w,
                      width: 36.w,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 40.h),
              Wrap(
                crossAxisAlignment: WrapCrossAlignment.center,
                spacing: 40.w,
                children: [
                  Text(
                    "Home",
                    style: TextStyle(
                        color: AppColors.white,
                        fontWeight: FontWeight.w500,
                        fontSize: 18.sp),
                  ),
                  Text(
                    "About us",
                    style: TextStyle(
                        color: AppColors.white,
                        fontWeight: FontWeight.w500,
                        fontSize: 18.sp),
                  ),
                  Text(
                    "Our interests",
                    style: TextStyle(
                        color: AppColors.white,
                        fontWeight: FontWeight.w500,
                        fontSize: 18.sp),
                  ),
                  Text(
                    "Values",
                    style: TextStyle(
                        color: AppColors.white,
                        fontWeight: FontWeight.w500,
                        fontSize: 18.sp),
                  ),
                  Text(
                    "Current Projects",
                    style: TextStyle(
                        color: AppColors.white,
                        fontWeight: FontWeight.w500,
                        fontSize: 18.sp),
                  ),
                ],
              ),
              SizedBox(height: 40.h)
            ],
          )
        ],
      ),
    );
  }
}
