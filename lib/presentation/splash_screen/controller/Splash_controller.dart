import 'dart:async';

import 'package:get/get.dart';
import 'package:nov_project/routes/PageList/PageList.dart';

class SplashController extends GetxController {
  @override
  void onInit() {
    // TODO: implement onInit
    Timer(
      Duration(seconds: 3),
      () {
        Get.toNamed(Pagelist.LogIn);
      },
    );
    super.onInit();
  }
}
