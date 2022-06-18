import 'package:excursy/src/res/colors.dart';
import 'package:excursy/src/shared/exc_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class HeaderSection extends StatelessWidget {
  const HeaderSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          color: Colors.orange,
          width: 120.w,
          // height: 1,
        ),
        const Flexible(
          child: HeaderWidget(),
        ),
        Container(
          color: Colors.orange,
          width: 120.w,
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
      height: 76.h,
      child: Wrap(
        crossAxisAlignment: WrapCrossAlignment.center,
        children: [
          SvgPicture.asset(
            "assets/svg/logo_large.svg",
            width: 239.w,
            height: 76.h,
          ),
          SizedBox(width: 115.w),
          Text(
            "Home",
            style: TextStyle(
                color: AppColors.orange,
                fontWeight: FontWeight.w700,
                fontSize: 18.sp),
          ),
          SizedBox(width: 48.w),
          Text(
            "About us",
            style: TextStyle(
                color: AppColors.darkBlack,
                fontWeight: FontWeight.w400,
                fontSize: 18.sp),
          ),
          SizedBox(width: 48.w),
          Text(
            "Our interests",
            style: TextStyle(
                color: AppColors.darkBlack,
                fontWeight: FontWeight.w400,
                fontSize: 18.sp),
          ),
          SizedBox(width: 48.w),
          Text(
            "Values",
            style: TextStyle(
                color: AppColors.darkBlack,
                fontWeight: FontWeight.w400,
                fontSize: 18.sp),
          ),
          SizedBox(width: 48.w),
          Text(
            "Current Projects",
            style: TextStyle(
                color: AppColors.darkBlack,
                fontWeight: FontWeight.w400,
                fontSize: 18.sp),
          ),
          SizedBox(width: 79.w),
          EXCButton(
            width: 146.w,
            height: 55.h,
            child: Text(
              "Sign Up",
              style: TextStyle(
                  color: AppColors.white,
                  fontWeight: FontWeight.w700,
                  fontSize: 16.sp),
            ),
            onPressed: () => {},
          )
        ],
      ),
    );
  }
}
