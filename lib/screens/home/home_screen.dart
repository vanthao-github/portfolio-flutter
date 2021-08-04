import 'package:flutter/material.dart';
import 'package:portfolio/screens/home/components/heightlights.dart';
import 'package:portfolio/screens/home/components/home_banner.dart';
import 'package:portfolio/screens/home/components/my_projects.dart';
import 'package:portfolio/screens/home/components/recommendations.dart';
import 'package:portfolio/screens/main/main_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MainScreen(children: [
      HomeBanner(),
      HeighLights(),
      MyProjects(),
      Recommendations(),
    ]);
  }
}
