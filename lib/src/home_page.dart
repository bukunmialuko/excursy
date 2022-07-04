import 'package:excursy/src/responsive.dart';
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
          children: <Widget>[
            if (Responsive.isMobile(context)) ...[
              const SizedBox(height: 44)
            ] else ...[
              const SizedBox(height: 56),
            ],
            const HeaderSection(),
            if (Responsive.isMobile(context)) ...[
              const SizedBox(height: 48)
            ] else ...[
              const SizedBox(height: 127),
            ],
            const GetStartedSection(),
            if (Responsive.isMobile(context)) ...[
              const SizedBox(height: 48)
            ] else ...[
              const SizedBox(height: 159),
            ],
            const PartnersSection(),
            if (Responsive.isMobile(context)) ...[
              const SizedBox(height: 24)
            ] else ...[
              const SizedBox(height: 139),
            ],
            const AboutUsSection(),
            if (Responsive.isMobile(context)) ...[
              const SizedBox(height: 48)
            ] else ...[
              const SizedBox(height: 158),
            ],
            const OurInterestsSection(),
            if (Responsive.isMobile(context)) ...[
              const SizedBox(height: 48)
            ] else ...[
              const SizedBox(height: 179),
            ],
            const OurValuesSection(),
            if (Responsive.isMobile(context)) ...[
              const SizedBox(height: 48)
            ] else ...[
              const SizedBox(height: 179),
            ],
            const CurrentProjectsSection(),
            const SizedBox(height: 132),
            const FooterSection(),
          ],
        ),
      ),
    );
  }
}

///
/// https://stackoverflow.com/a/67452289/8095270
class FlutterWebImageWithUrl extends StatelessWidget {
  const FlutterWebImageWithUrl({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
      width: 200,
      child: Image.network('https://picsum.photos/250?image=9'),
    );
  }
}
