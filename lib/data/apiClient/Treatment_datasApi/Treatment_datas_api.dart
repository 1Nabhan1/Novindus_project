import 'dart:convert';
import 'package:get_storage/get_storage.dart';
import 'package:nov_project/presentation/Register_screen/models/Treatment_data/Treatment_data.dart';
import 'package:http/http.dart' as http;
import '../../../core/constants/APi/Api.dart';

Future<List<Treatments>> fetchTreatmentList() async {
  final box = GetStorage();
  String? token = box.read('token');
  final response = await http.get(
    Uri.parse(Api.Treatments),
    headers: {'Authorization': 'Bearer $token'},
  );

  if (response.statusCode == 200) {
    final List<dynamic> responseData = json.decode(response.body)['treatments'];
    return responseData.map((json) => Treatments.fromJson(json)).toList();
  } else {
    throw Exception('Failed to load treatment list');
  }
}
