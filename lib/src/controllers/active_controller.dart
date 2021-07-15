import 'package:get/get.dart';

class ActiveController extends GetxController {
  static ActiveController instance = Get.find();
  RxString activeItem = firstPage.obs;

  changeActiveItemTo(String itemName) {
    activeItem.value = itemName;
  }

  bool isActive(String pageName) => activeItem.value == pageName;
}

const firstPage = 'AboutUs';
const secondPage = 'Service';
const thirdPage = 'Team';
const forthPage = 'Inquire';
