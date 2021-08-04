import 'package:flutter/material.dart';
import 'package:portfolio/constants.dart';
import 'package:portfolio/responsive.dart';
import 'package:portfolio/screens/home/components/animated_counter.dart';
import 'package:portfolio/screens/home/components/hightlight.dart';

class HeighLights extends StatelessWidget {
  const HeighLights({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: defaultPadding),
      child: Responsive.isMobileLarge(context)
          ? Column(children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  HeightLight(
                    counter: AnimatedCouter(value: 100, text: "K+"),
                    label: "Subcribers",
                  ),
                  HeightLight(
                    counter: AnimatedCouter(value: 40, text: "+"),
                    label: "Videos",
                  ),
                ],
              ),
              const SizedBox(height: defaultPadding),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  HeightLight(
                    counter: AnimatedCouter(value: 20, text: "+"),
                    label: "Github Projects",
                  ),
                  HeightLight(
                    counter: AnimatedCouter(value: 13, text: "K+"),
                    label: "Stars",
                  ),
                ],
              )
            ])
          : Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                HeightLight(
                  counter: AnimatedCouter(value: 100, text: "K+"),
                  label: "Subcribers",
                ),
                HeightLight(
                  counter: AnimatedCouter(value: 40, text: "+"),
                  label: "Videos",
                ),
                HeightLight(
                  counter: AnimatedCouter(value: 20, text: "+"),
                  label: "Github Projects",
                ),
                HeightLight(
                  counter: AnimatedCouter(value: 13, text: "K+"),
                  label: "Stars",
                ),
              ],
            ),
    );
  }
}
