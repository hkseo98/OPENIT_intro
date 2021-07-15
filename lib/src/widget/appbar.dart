import 'package:flutter/material.dart';
import 'package:openitintro/src/controllers/active_controller.dart';
import 'package:openitintro/src/help/auto_scroll_controller.dart';
import 'package:get/get.dart';

import 'custom_text.dart';

AppBar topNavigationBar(BuildContext context, GlobalKey<ScaffoldState> key) {
  double _width = MediaQuery.of(context).size.width;
  ActiveController activeController = Get.put(ActiveController());
  return AppBar(
    shadowColor: Colors.yellow,
    backgroundColor: Colors.grey,
    leading: Container(
      padding: EdgeInsets.fromLTRB(10, 18, 10, 10),
      child: CustomText(
        text: "Logo",
        size: 16,
        weight: FontWeight.bold,
      ),
    ),
    title: _width > 600
        ? Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              SizedBox(
                width: _width / 4,
              ),
              Container(
                width: _width / 7,
                child: TextButton(
                    style: ButtonStyle(
                      overlayColor: MaterialStateColor.resolveWith(
                          (states) => Colors.black38),
                    ),
                    onPressed: () {
                      autoScrollController.scrollToIndex(1);
                      activeController.changeActiveItemTo(firstPage);
                    },
                    child: Obx(
                      () => !activeController.isActive(firstPage)
                          ? CustomText(
                              text: "About Us",
                              weight: FontWeight.bold,
                              size: _width / 50,
                            )
                          : CustomText(
                              text: "About Us",
                              weight: FontWeight.bold,
                              size: _width / 50,
                              color: Colors.yellow,
                            ),
                    )),
                padding: EdgeInsets.only(left: 16),
              ),
              Container(
                width: _width / 7,
                child: TextButton(
                    style: ButtonStyle(
                      overlayColor: MaterialStateColor.resolveWith(
                          (states) => Colors.black38),
                    ),
                    onPressed: () {
                      autoScrollController.scrollToIndex(2);
                      activeController.changeActiveItemTo(secondPage);
                    },
                    child: Obx(
                      () => !activeController.isActive(secondPage)
                          ? CustomText(
                              text: "Service",
                              weight: FontWeight.bold,
                              size: _width / 50,
                            )
                          : CustomText(
                              text: "Service",
                              weight: FontWeight.bold,
                              size: _width / 50,
                              color: Colors.yellow,
                            ),
                    )),
                padding: EdgeInsets.only(left: 16),
              ),
              Container(
                width: _width / 7,
                child: TextButton(
                    style: ButtonStyle(
                      overlayColor: MaterialStateColor.resolveWith(
                          (states) => Colors.black38),
                    ),
                    onPressed: () {
                      autoScrollController.scrollToIndex(3);
                      activeController.changeActiveItemTo(thirdPage);
                    },
                    child: Obx(
                      () => !activeController.isActive(thirdPage)
                          ? CustomText(
                              text: "Team",
                              weight: FontWeight.bold,
                              size: _width / 50,
                            )
                          : CustomText(
                              text: "Team",
                              weight: FontWeight.bold,
                              size: _width / 50,
                              color: Colors.yellow,
                            ),
                    )),
                padding: EdgeInsets.only(left: 16),
              ),
              Container(
                width: _width / 7,
                child: TextButton(
                  style: ButtonStyle(
                    overlayColor: MaterialStateColor.resolveWith(
                        (states) => Colors.black38),
                  ),
                  onPressed: () {
                    autoScrollController.scrollToIndex(4);
                    activeController.changeActiveItemTo(forthPage);
                  },
                  child: Obx(() => !activeController.isActive(forthPage)
                      ? CustomText(
                          text: "Inquire",
                          weight: FontWeight.bold,
                          size: _width / 50,
                        )
                      : CustomText(
                          text: "Inquire",
                          weight: FontWeight.bold,
                          size: _width / 50,
                          color: Colors.yellow,
                        )),
                ),
                padding: EdgeInsets.only(left: 16),
              ),
            ],
          )
        : Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                child: IconButton(
                  icon: Icon(Icons.menu),
                  onPressed: () {
                    key.currentState!.openDrawer();
                  },
                ),
              ),
            ],
          ),
  );
}
