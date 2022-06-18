import 'package:excursy/src/res/colors.dart';
import 'package:excursy/src/shared/exc_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class GetStartedSection extends StatefulWidget {
  const GetStartedSection({Key? key}) : super(key: key);

  @override
  State<GetStartedSection> createState() => _GetStartedSectionState();
}

class _GetStartedSectionState extends State<GetStartedSection> {
  @override
  Widget build(BuildContext context) {
    return Wrap(
      crossAxisAlignment: WrapCrossAlignment.center,
      children: [
        Container(
          color: Colors.orange,
          width: 120.w,
          // height: 1,
        ),
        const _LeftSection(),
        SizedBox(width: 91.w),
        const _RightSection(),
      ],
    );
  }
}

class _LeftSection extends StatelessWidget {
  const _LeftSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FittedBox(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            width: 502.w,
            child: RichText(
              text: TextSpan(
                text: 'Let’s take a \ntour to ',
                style: TextStyle(
                  color: AppColors.darkBlack,
                  fontSize: 56.sp,
                  fontWeight: FontWeight.w800,
                ),
                children: <TextSpan>[
                  TextSpan(
                    text: 'Blockchain',
                    style: TextStyle(
                      color: AppColors.orange,
                      fontSize: 56.sp,
                      fontWeight: FontWeight.w800,
                    ),
                  ),
                  TextSpan(
                    text: ' Technology',
                    style: TextStyle(
                      color: AppColors.darkBlack,
                      fontSize: 56.sp,
                      fontWeight: FontWeight.w800,
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: 36.h),
          SizedBox(
            width: 448.w,
            child: Text(
              "We are highly focused by blockchain technology that will lead positively to the future web.",
              style: TextStyle(
                  color: AppColors.orange,
                  fontWeight: FontWeight.w400,
                  fontSize: 18.sp),
            ),
          ),
          SizedBox(height: 74.h),
          SizedBox(
            width: 502.w,
            child: Row(
              children: [
                EXCButton(
                  width: 208.w,
                  height: 64.h,
                  child: Row(
                    children: [
                      Text(
                        "Get Started",
                        style: TextStyle(
                            color: AppColors.white,
                            fontWeight: FontWeight.w700,
                            fontSize: 16.sp),
                      ),
                      SizedBox(width: 8.w),
                      const Icon(Icons.chevron_right_rounded)
                    ],
                  ),
                  onPressed: () => {},
                ),
                SizedBox(width: 32.w),
                EXCButton(
                  width: 208.w,
                  height: 64.h,
                  color: AppColors.white,
                  borderColor: AppColors.orange,
                  child: Text(
                    "Learn more",
                    style: TextStyle(
                        color: AppColors.darkBlack,
                        fontWeight: FontWeight.w700,
                        fontSize: 16.sp),
                  ),
                  onPressed: () => {},
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}

class _RightSection extends StatelessWidget {
  const _RightSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 719.w,
      child: SvgPicture.asset(
        "assets/svg/people1.svg",
        width: 719.w,
        height: 390.h,
      ),
    );
  }
}
