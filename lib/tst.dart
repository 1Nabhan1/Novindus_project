// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:nov_project/presentation/Register_screen/models/Branch_data/branch_data.dart';
//
// import 'data/apiClient/Branch_datas/branch_datas_api.dart';
//
// class DropController extends GetxController {
//   final branches = <Branch>[].obs; // Observable list of branches
//   var initialSelect = "".obs;
//
//   @override
//   void onInit() {
//     super.onInit();
//     fetchBranchList().then((branches) {
//       this.branches.assignAll(branches);
//       initialSelect.value = branches.isNotEmpty ? branches.first.name : "";
//     }).catchError((error) {
//       print("Error fetching branches: $error");
//       // Handle error here
//     });
//   }
// }
//
// class Drop extends StatelessWidget {
//   final DropController dropController = Get.put(DropController());
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Center(
//         child: Obx(
//               () => DropdownButton<String>(
//             value: dropController.initialSelect.value,
//             onChanged: (String? value) {
//               dropController.initialSelect.value = value!;
//             },
//             items: dropController.branches.map((branch) {
//               return DropdownMenuItem<String>(
//                 value: branch.name,
//                 child: Text(branch.name),
//               );
//             }).toList(),
//           ),
//         ),
//       ),
//     );
//   }
// }
