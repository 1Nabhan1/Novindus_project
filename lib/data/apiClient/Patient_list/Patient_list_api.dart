import 'dart:convert';
import 'package:get_storage/get_storage.dart';
import 'package:http/http.dart' as http;
import 'package:nov_project/core/constants/APi/Api.dart';

import '../../../presentation/home_screen/models/Patient_list_Models/patient_list_model.dart';

Future<List<Patient>> fetchData() async {
  final box = GetStorage();
  String? token = box.read('token');
  String apiUrl = Api.PatientList;

  try {
    http.Response response = await http.get(
      Uri.parse(apiUrl),
      headers: {
        'Authorization': 'Bearer $token',
        'Content-Type': 'application/json',
      },
    );

    if (response.statusCode == 200) {
      Map<String, dynamic> responseData = json.decode(response.body);
      List<dynamic> patientData = responseData['patient'];
      List<Patient> patients =
          patientData.map((data) => Patient.fromJson(data)).toList();
      return patients;
    } else {
      print("Request failed with status: ${response.statusCode}");
      return [];
    }
  } catch (e) {
    print("Error: $e");
    return [];
  }
}
