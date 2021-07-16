import 'package:flutter/material.dart';
import 'package:openitintro/src/help/auto_scroll_controller.dart';
import 'package:openitintro/src/pages/about.dart';
import 'package:openitintro/src/pages/footer.dart';
import 'package:openitintro/src/pages/inquire.dart';
import 'package:openitintro/src/pages/service.dart';
import 'package:openitintro/src/pages/team.dart';
import 'package:scroll_to_index/scroll_to_index.dart';

// ignore: must_be_immutable
class Body extends StatelessWidget {
  Body({Key? key}) : super(key: key);
  var i = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView(
        controller: autoScrollController,
        children: pageList.map((data) {
          return AutoScrollTag(
              key: ValueKey(i++),
              controller: autoScrollController,
              index: i,
              child: data);
        }).toList(),
      ),
    );
  }
}

List<Widget> pageList = [
  AboutPage(),
  ServicePage(),
  TeamPage(),
  InquirePage(),
  Footer(),
];
