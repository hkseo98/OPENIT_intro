import 'package:flutter/material.dart';
import 'package:openitintro/src/widget/custom_text.dart';

class TeamPage extends StatelessWidget {
  const TeamPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: EdgeInsets.all(16),
        child: CustomText(
          text: "Team",
          size: 30,
          weight: FontWeight.bold,
        ),
      ),
      height: 700,
      decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [Colors.amber, Colors.blue])),
    );
  }
}
