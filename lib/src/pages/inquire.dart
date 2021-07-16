// ignore: avoid_web_libraries_in_flutte

import 'package:flutter/material.dart';
import 'package:openitintro/src/pages/map.dart';
import 'package:openitintro/src/widget/custom_text.dart';
import 'package:get/get.dart';

class InquirePage extends StatefulWidget {
  const InquirePage({Key? key}) : super(key: key);

  @override
  _InquirePageState createState() => _InquirePageState();
}

class _InquirePageState extends State<InquirePage> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          padding: EdgeInsets.all(16),
          height: 700,
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [Colors.blue, Colors.green])),
        ),
        Container(
          padding: EdgeInsets.all(16),
          child: CustomText(
            text: "Inquire",
            size: 30,
            weight: FontWeight.bold,
          ),
        ),
        Positioned(
          top: 100,
          left: 100,
          child: ElevatedButton(
            child: Text('go to map'),
            onPressed: () {
              Get.to(MapPage());
            },
          ),
        )
      ],
    );
  }
}
