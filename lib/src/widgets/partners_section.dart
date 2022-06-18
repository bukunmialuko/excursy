import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class PartnersSection extends StatefulWidget {
  const PartnersSection({Key? key}) : super(key: key);

  @override
  State<PartnersSection> createState() => _PartnersSectionState();
}

class _PartnersSectionState extends State<PartnersSection> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SizedBox(
          width: 1035.w,
          height: 57.h,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                width: 169.w,
                child: SvgPicture.asset(
                  "assets/svg/microsoft.svg",
                  width: 169.w,
                  height: 43.h,
                ),
              ),
              const _PartnerSpacer(),
              SizedBox(
                width: 169.w,
                child: SvgPicture.asset(
                  "assets/svg/microsoft.svg",
                  width: 169.w,
                  height: 43.h,
                ),
              ),
              const _PartnerSpacer(),
              SizedBox(
                width: 169.w,
                child: SvgPicture.asset(
                  "assets/svg/microsoft.svg",
                  width: 169.w,
                  height: 43.h,
                ),
              ),
              const _PartnerSpacer(),
              SizedBox(
                width: 175.w,
                child: SvgPicture.asset(
                  "assets/svg/microsoft.svg",
                  width: 175.w,
                  height: 43.h,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class _PartnerSpacer extends StatelessWidget {
  const _PartnerSpacer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 57.h,
      width: 2.w,
      margin: EdgeInsets.symmetric(horizontal: 48.w),
      color: const Color(0xffC0C5D2),
    );
  }
}
