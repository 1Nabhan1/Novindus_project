import 'dart:convert';
import 'package:get_storage/get_storage.dart';
import 'package:http/http.dart' as http;
import 'package:nov_project/core/constants/APi/Api.dart';

import '../../../presentation/Register_screen/models/Branch_data/branch_data.dart';

Future<List<Branch>> fetchBranchList() async {
  final box = GetStorage();
  String? token = box.read('token');
  final response = await http.get(
    Uri.parse(Api.BranchList),
    headers: {'Authorization': 'Bearer $token'},
  );

  if (response.statusCode == 200) {
    final List<dynamic> responseData = json.decode(response.body)['branches'];
    return responseData.map((json) => Branch.fromJson(json)).toList();
  } else {
    throw Exception('Failed to load branch list');
  }
}

