import 'package:flutter/material.dart';
import 'package:openitintro/src/controllers/active_controller.dart';
import 'package:openitintro/src/help/auto_scroll_controller.dart';
import 'package:get/get.dart';

import 'custom_text.dart';

// ignore: must_be_immutable
class SideMenu extends StatelessWidget {
  SideMenu({Key? key}) : super(key: key);
  ActiveController activeController = Get.put(ActiveController());

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey,
      child: ListView(
        children: [
          Container(
            child: TextButton(
              style: ButtonStyle(
                overlayColor:
                    MaterialStateColor.resolveWith((states) => Colors.black38),
              ),
              onPressed: () {
                autoScrollController.scrollToIndex(1);
                Get.back();
              },
              child: CustomText(
                text: "About Us",
                size: 30,
                weight: FontWeight.bold,
              ),
            ),
            padding: EdgeInsets.all(16),
          ),
          Container(
            child: TextButton(
              style: ButtonStyle(
                overlayColor:
                    MaterialStateColor.resolveWith((states) => Colors.black38),
              ),
              onPressed: () {
                autoScrollController.scrollToIndex(2);
                Get.back();
              },
              child: CustomText(
                text: "Service",
                size: 30,
                weight: FontWeight.bold,
              ),
            ),
            padding: EdgeInsets.all(16),
          ),
          Container(
            child: TextButton(
              style: ButtonStyle(
                overlayColor:
                    MaterialStateColor.resolveWith((states) => Colors.black38),
              ),
              onPressed: () {
                autoScrollController.scrollToIndex(3);
                Get.back();
              },
              child: CustomText(
                text: "Team",
                size: 30,
                weight: FontWeight.bold,
              ),
            ),
            padding: EdgeInsets.all(16),
          ),
          Container(
            child: TextButton(
              style: ButtonStyle(
                overlayColor:
                    MaterialStateColor.resolveWith((states) => Colors.black38),
              ),
              onPressed: () {
                autoScrollController.scrollToIndex(4);
                Get.back();
              },
              child: CustomText(
                text: "Inquire",
                size: 30,
                weight: FontWeight.bold,
              ),
            ),
            padding: EdgeInsets.all(16),
          ),
        ],
      ),
    );
  }
}
