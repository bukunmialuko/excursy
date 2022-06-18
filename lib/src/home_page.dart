import 'package:excursy/src/widgets/about_us_section.dart';
import 'package:excursy/src/widgets/current_projects_section.dart';
import 'package:excursy/src/widgets/footer_section.dart';
import 'package:excursy/src/widgets/getting_stated_section.dart';
import 'package:excursy/src/widgets/our_interests_section.dart';
import 'package:excursy/src/widgets/our_values_section.dart';
import 'package:excursy/src/widgets/partners_section.dart';
import 'package:flutter/material.dart';

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
          children: const <Widget>[
            SizedBox(height: 56),
            HeaderSection(),
            SizedBox(height: 127),
            GetStartedSection(),
            SizedBox(height: 159),
            PartnersSection(),
            SizedBox(height: 139),
            AboutUsSection(),
            SizedBox(height: 158),
            OurInterestsSection(),
            OurValuesSection(),
            SizedBox(height: 179),
            CurrentProjectsSection(),
            SizedBox(height: 132),
            FooterSection(),
          ],
        ),
      ),
    );
  }
}
