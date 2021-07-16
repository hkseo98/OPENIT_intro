import 'package:flutter/material.dart';
import 'package:openitintro/src/widget/custom_text.dart';
import 'package:get/get.dart';

class ServicePage extends StatefulWidget {
  const ServicePage({Key? key}) : super(key: key);

  @override
  _ServicePageState createState() => _ServicePageState();
}

class _ServicePageState extends State<ServicePage> {
  @override
  Widget build(BuildContext context) {
    var _width = MediaQuery.of(context).size.width;
    var _height = MediaQuery.of(context).size.height;
    return Stack(
      children: [
        Container(
          height: 700,
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [Colors.purple, Colors.amber])),
        ),
        Padding(
          padding: EdgeInsets.all(16),
          child: CustomText(
            text: "Service",
            size: 30,
            weight: FontWeight.bold,
          ),
        ),
        Positioned(
            top: _width / 5 > 200 ? 200 : _width / 5,
            left: _width / 5 > 200 ? 200 : _width / 5,
            child: Row(
              children: [
                TextButton(
                  onPressed: () {
                    showDialog(
                        context: context,
                        builder: (BuildContext context) {
                          return AlertDialog(
                            backgroundColor: Colors.white,
                            content: Stack(
                              children: <Widget>[
                                Container(
                                  width: _width / 3,
                                  height: _height / 2,
                                  color: Colors.amber,
                                ),
                                Positioned(
                                    child: IconButton(
                                        onPressed: () {
                                          Get.back();
                                        },
                                        icon: Icon(Icons.arrow_back)))
                              ],
                            ),
                          );
                        });
                  },
                  child: Container(
                    width: 60,
                    height: 40,
                    decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.2),
                            spreadRadius: 5,
                            blurRadius: 7,
                            offset: Offset(0, 3), // changes position of shadow
                          ),
                        ],
                        borderRadius: BorderRadius.circular(12),
                        color: Colors.green),
                  ),
                ),
                SizedBox(
                  width: 30,
                ),
                TextButton(
                  onPressed: () {
                    showDialog(
                        context: context,
                        builder: (BuildContext context) {
                          return AlertDialog(
                            backgroundColor: Colors.white,
                            content: Stack(
                              children: <Widget>[
                                Container(
                                  width: _width / 3,
                                  height: _height / 2,
                                  color: Colors.amber,
                                ),
                                Positioned(
                                    child: IconButton(
                                        onPressed: () {
                                          Get.back();
                                        },
                                        icon: Icon(Icons.exit_to_app)))
                              ],
                            ),
                          );
                        });
                  },
                  child: Container(
                    width: 60,
                    height: 40,
                    decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.2),
                          spreadRadius: 5,
                          blurRadius: 7,
                          offset: Offset(0, 3), // changes position of shadow
                        ),
                      ],
                      borderRadius: BorderRadius.circular(12),
                      color: Color(0xffaae19a),
                    ),
                  ),
                ),
                SizedBox(
                  width: 30,
                ),
                TextButton(
                  onPressed: () {
                    showDialog(
                        context: context,
                        builder: (BuildContext context) {
                          return AlertDialog(
                            backgroundColor: Colors.white,
                            content: Stack(
                              children: <Widget>[
                                Container(
                                  width: _width / 3,
                                  height: _height / 2,
                                  color: Colors.amber,
                                ),
                                Positioned(
                                    child: IconButton(
                                        onPressed: () {
                                          Get.back();
                                        },
                                        icon: Icon(Icons.arrow_back)))
                              ],
                            ),
                          );
                        });
                  },
                  child: Container(
                      width: 60,
                      height: 40,
                      decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.2),
                            spreadRadius: 5,
                            blurRadius: 7,
                            offset: Offset(0, 3), // changes position of shadow
                          ),
                        ],
                        borderRadius: BorderRadius.circular(12),
                        color: Color(0xffaae19a),
                      )),
                )
              ],
            ))
      ],
    );
  }
}
