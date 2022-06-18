import 'package:excursy/src/widgets/about_us_section.dart';
import 'package:excursy/src/widgets/current_projects_section.dart';
import 'package:excursy/src/widgets/getting_stated_section.dart';
import 'package:excursy/src/widgets/our_interests_section.dart';
import 'package:excursy/src/widgets/our_values_section.dart';
import 'package:excursy/src/widgets/partners_section.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'widgets/header_section.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            SizedBox(height: 56.h),
            const HeaderSection(),
            SizedBox(height: 127.h),
            const GetStartedSection(),
            SizedBox(height: 159.h),
            const PartnersSection(),
            SizedBox(height: 139.h),
            const AboutUsSection(),
            SizedBox(height: 158.h),
            const OurInterestsSection(),
            const OurValuesSection(),
            SizedBox(height: 179.h),
            const CurrentProjectsSection(),
            SizedBox(height: 132.h),
            // const FooterSection(),
          ],
        ),
      ),
    );
  }
}
