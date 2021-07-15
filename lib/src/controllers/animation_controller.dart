import 'package:get/get.dart';

class AniController extends GetxController {
  bool isMoved = false;

  changeIsMovedTo(bool v) {
    isMoved = v;
  }
}
