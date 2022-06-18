import 'package:excursy/src/res/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class OurInterestsSection extends StatelessWidget {
  const OurInterestsSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          "Our Interests",
          style: TextStyle(
              color: AppColors.darkBlack,
              fontWeight: FontWeight.w800,
              fontSize: 52.sp),
        ),
        SizedBox(height: 35.h),
        SizedBox(
          width: 765.w,
          child: Text(
            "It's the norm these days to lay out a roadmap that gives stakeholders an indication of the direction that the project aspires to go. Inspired by Elon Musk’s 2006 masterplan, these are our skeleton ambitions.",
            textAlign: TextAlign.center,
            style: TextStyle(
                color: AppColors.darkGrey,
                fontWeight: FontWeight.w400,
                fontSize: 20.sp),
          ),
        ),
        SizedBox(height: 65.h),
        Padding(
          padding: EdgeInsets.symmetric(vertical: 121.w),
          child: Wrap(
            spacing: 30.w,
            crossAxisAlignment: WrapCrossAlignment.center,
            children: const [
              _OurInterestItem(
                assetName: 'assets/svg/our_interest_1.svg',
                title: 'Blockchain product ',
                subTitle:
                    'Create something novel that has never been done on the blockchain before Build a product',
              ),
              _OurInterestItem(
                assetName: 'assets/svg/our_interest_2.svg',
                title: 'Quality product',
                subTitle:
                    'Create something novel that has never been done on the blockchain before Build a product',
              ),
              _OurInterestItem(
                assetName: 'assets/svg/our_interest_3.svg',
                title: 'Viable product',
                subTitle:
                    'Create something novel that has never been done on the blockchain before Build a product',
              ),
            ],
          ),
        )
      ],
    );
  }
}

class _OurInterestItem extends StatelessWidget {
  final String assetName;
  final String title;
  final String subTitle;

  const _OurInterestItem(
      {Key? key,
      required this.assetName,
      required this.title,
      required this.subTitle})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 379.w,
      padding: EdgeInsets.symmetric(
        horizontal: 44.w,
        vertical: 40.h,
      ),
      color: AppColors.white,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            width: 40.w,
            height: 40.w,
            child: SvgPicture.asset(assetName),
          ),
          SizedBox(height: 24.h),
          Text(
            title,
            style: TextStyle(
                color: AppColors.darkBlack,
                fontWeight: FontWeight.w700,
                fontSize: 28.sp),
          ),
          SizedBox(height: 24.h),
          Text(
            subTitle,
            style: TextStyle(
                color: AppColors.darkGrey,
                fontWeight: FontWeight.w400,
                fontSize: 18.sp),
          ),
          SizedBox(height: 32.h),
          Text(
            'Read More',
            style: TextStyle(
                color: AppColors.orange,
                fontWeight: FontWeight.w600,
                fontSize: 18.sp),
          ),
        ],
      ),
    );
  }
}
