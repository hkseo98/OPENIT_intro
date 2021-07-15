import 'package:flutter/material.dart';
import 'package:openitintro/src/widget/custom_text.dart';

class ServicePage extends StatelessWidget {
  const ServicePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: EdgeInsets.all(16),
        child: CustomText(
          text: "Service",
          size: 30,
          weight: FontWeight.bold,
        ),
      ),
      height: 700,
      decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [Colors.purple, Colors.amber])),
    );
  }
}
