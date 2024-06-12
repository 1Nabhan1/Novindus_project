import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';
import 'package:nov_project/presentation/Register_screen/models/Branch_data/branch_data.dart';

import '../../../data/apiClient/Branch_datas/branch_datas_api.dart';

class RegisterController extends GetxController {
  final branches = <Branch>[].obs; // Observable list of branches
  var initialSelect = "".obs;

  @override
  void onInit() {
    super.onInit();
    fetchBranchList().then((branches) {
      this.branches.assignAll(branches);
      initialSelect.value = branches.isNotEmpty ? branches.first.name : "";
    }).catchError((error) {
      print("Error fetching branches: $error");
      // Handle error here
    });
  }
  void onClose() {
    // Clean up controllers when the controller is closed
    nameC.dispose();
    phoneC.dispose();
    addressC.dispose();
    TdateC.dispose();
    maleC.dispose();
    femaleC.dispose();
    super.onClose();
  }

  final formKey = GlobalKey<FormState>();

  TextEditingController nameC = TextEditingController();
  TextEditingController phoneC = TextEditingController();
  TextEditingController addressC = TextEditingController();
  TextEditingController TdateC = TextEditingController();
  TextEditingController maleC = TextEditingController();
  TextEditingController femaleC = TextEditingController();
}