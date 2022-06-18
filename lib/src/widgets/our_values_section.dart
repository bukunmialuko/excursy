import 'package:excursy/src/res/colors.dart';
import 'package:excursy/src/shared/exc_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
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
          width: 122.w,
          // height: 1,
        ),
        const _LeftSection(),
        SizedBox(width: 69.w),
        const _RightSection(),
        Container(
          color: Colors.orange,
          width: 120.w,
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
      width: 514.w,
      height: 352.h,
      child: SvgPicture.asset(
        "assets/svg/our_values.svg",
        width: 546.w,
        height: 352.h,
      ),
    );
  }
}

class _RightSection extends StatelessWidget {
  const _RightSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 614.w,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Our Values",
            style: TextStyle(
                color: AppColors.darkBlack,
                fontWeight: FontWeight.w800,
                fontSize: 52.sp),
          ),
          SizedBox(height: 35.h),
          Text(
            'anftw is a hallmark. The team members may change, but the quality of our project execution will not.An outstanding team can build a product in any industry. Don’t be intimidated by incumbents.',
            style: TextStyle(
                color: AppColors.darkGrey,
                fontWeight: FontWeight.w400,
                fontSize: 20.sp),
          ),
          SizedBox(height: 35.h),
          EXCButton(
            width: 161.w,
            height: 54.h,
            child: Text(
              "Read More",
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
