import 'package:get/get.dart';
import 'package:intl/intl.dart';

import '../../../data/apiClient/Patient_list/Patient_list_api.dart';
import '../models/Patient_list_Models/patient_list_model.dart';

class HomeScreencontroller extends GetxController {
  var fetchedPatients = <Patient>[].obs;

  String? formatDate(String dateTime) {
    try {
      final DateTime parsedDate = DateTime.parse(dateTime);
      return DateFormat('yyyy-MM-dd').format(parsedDate);
    } catch (e) {
      return null;
    }
  }
  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    fetchPatients();
  }

  Future<void> fetchPatients() async {
    List<Patient> patients = await fetchData();
    fetchedPatients.value = patients;
  }
}
