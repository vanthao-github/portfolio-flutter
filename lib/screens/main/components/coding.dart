import 'package:flutter/material.dart';
import 'package:portfolio/constants.dart';

class Coding extends StatelessWidget {
  const Coding({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Divider(),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: defaultPadding),
          child: Text(
            "Coding",
            style: Theme.of(context).textTheme.subtitle2,
          ),
        ),
        AnimatedLinearProgressIndicator(
          percentage: 0.6,
          label: "Dart",
        ),
        AnimatedLinearProgressIndicator(
          percentage: 0.8,
          label: "React JS",
        ),
        AnimatedLinearProgressIndicator(
          percentage: 0.7,
          label: "Elixir",
        ),
        AnimatedLinearProgressIndicator(
          percentage: 0.8,
          label: "HTML",
        ),
        AnimatedLinearProgressIndicator(
          percentage: 0.9,
          label: "CSS",
        ),
      ],
    );
  }
}

class AnimatedLinearProgressIndicator extends StatelessWidget {
  const AnimatedLinearProgressIndicator({
    Key? key,
    required this.percentage,
    required this.label,
  }) : super(key: key);

  final double percentage;
  final String label;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: defaultPadding),
      child: TweenAnimationBuilder(
        tween: Tween<double>(begin: 0, end: percentage),
        duration: defaultDuration,
        builder: (context, double value, child) => Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  label,
                  style: TextStyle(color: Colors.white),
                ),
                Text((value * 100).toInt().toString() + "%")
              ],
            ),
            SizedBox(
              height: defaultPadding / 2,
            ),
            LinearProgressIndicator(
              value: value,
              color: primaryColor,
              backgroundColor: bgColor,
            ),
          ],
        ),
      ),
    );
  }
}
