import 'package:flutter/material.dart';
import 'package:openitintro/src/widget/custom_text.dart';

class InquirePage extends StatelessWidget {
  const InquirePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: EdgeInsets.all(16),
        child: CustomText(
          text: "Inquire",
          size: 30,
          weight: FontWeight.bold,
        ),
      ),
      height: 700,
      decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [Colors.blue, Colors.green])),
    );
  }
}
