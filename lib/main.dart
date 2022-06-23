import 'package:excursy/src/res/font_family.dart';
import 'package:flutter/material.dart';

import 'src/home_page.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Excursy',
      theme: ThemeData(fontFamily: FontFamily.manrope),
      home: const HomePage(),
    );
  }
}
