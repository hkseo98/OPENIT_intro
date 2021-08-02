import 'package:flutter/material.dart';
import 'package:openitintro/src/widget/SideMenu.dart';
import 'package:openitintro/src/widget/appbar.dart';
import 'package:openitintro/src/widget/body.dart';

// ignore: must_be_immutable
class Layout extends StatelessWidget {
  Layout({Key? key}) : super(key: key);
  GlobalKey<ScaffoldState> scaffoldKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: topNavigationBar(context, scaffoldKey),
      body: Body(),
      drawer: Drawer(
        child: SideMenu(),
      ),
    );
  }
}
