import 'package:flutter/material.dart';
import 'package:openitintro/src/controllers/animation_controller.dart';
import 'package:openitintro/src/widget/custom_text.dart';
import 'package:get/get.dart';

class AboutPage extends StatefulWidget {
  const AboutPage({Key? key}) : super(key: key);

  @override
  _AboutPageState createState() => _AboutPageState();
}

class _AboutPageState extends State<AboutPage> with TickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<Offset> _animation;

  AniController animationController = Get.put(AniController());

  @override
  void initState() {
    super.initState();
    if (!animationController.isMoved) {
      _controller = AnimationController(
        duration: const Duration(seconds: 1),
        vsync: this,
      )..forward();
      _animation = Tween<Offset>(
        begin: const Offset(-1, 0.0),
        end: const Offset(1, 0.0),
      ).animate(CurvedAnimation(
        parent: _controller,
        curve: Curves.easeInCubic,
      ));
    } else {
      _controller = AnimationController(
        duration: const Duration(seconds: 0),
        vsync: this,
      )..forward();
      _animation = Tween<Offset>(
        begin: const Offset(0.0, 0.0),
        end: const Offset(1, 0.0),
      ).animate(CurvedAnimation(
        parent: _controller,
        curve: Curves.easeInCubic,
      ));
    }
    animationController.changeIsMovedTo(true);
  }

  @override
  dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    var _width = MediaQuery.of(context).size.width;
    return Stack(
      children: [
        Container(
          height: 700,
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [Colors.yellow, Colors.purple])),
        ),
        Positioned(
          child: Padding(
            padding: EdgeInsets.all(16),
            child: Container(
              child: CustomText(
                text: "About Us",
                size: 30,
                weight: FontWeight.bold,
              ),
            ),
          ),
        ),
        Positioned(
            top: _width / 5 > 200 ? 200 : _width / 5,
            left: _width / 20 > 100 ? 100 : _width / 20,
            child: SlideTransition(
                position: _animation,
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      border: Border.all(color: Colors.orange, width: 2)),
                  width: 200,
                  height: 200,
                )))
      ],
    );
  }
}
