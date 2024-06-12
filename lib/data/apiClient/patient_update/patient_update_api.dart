import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:http/http.dart' as http;

import '../../../core/constants/APi/Api.dart';

void updatePatient(BuildContext context,
    {required String name,
    required String address,
    required String male,
    required String female,
    required String date_time,
    required String phone,
    required String branch,
    required String treatment}) async {
  final box = GetStorage();
  String? token = box.read('token');
  String apiUrl = Api.RegisterUrl;

  var formData = {
    'name': name,
    'excecutive': 'test_user',
    'payment': 'Paid',
    'phone': phone,
    'address': address,
    'total_amount': '300',
    'discount_amount': '3200',
    'advance_amount': '2300',
    'balance_amount': '3200',
    'date_nd_time': date_time,
    'id': '',
    'male': male,
    'female': female,
    'treatments': treatment,
    'branch': branch
  };

  var headers = {
    'Authorization': 'Bearer $token',
  };

  var response = await http.post(
    Uri.parse(apiUrl),
    headers: headers,
    body: formData,
  );

  // Check response status
  if (response.statusCode == 200) {
    print('Request successful');
    print('Response: ${response.body}');
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        backgroundColor: Colors.green,
        content: Text("Your appointment booked"),
        duration: Duration(seconds: 2),
      ),
    );
    Get.back();
  } else {
    print('Request failed with status: ${response.statusCode}');
    print('Response: ${response.body}');
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        backgroundColor: Colors.red,
        content: Text("Failed to book"),
        duration: Duration(seconds: 2),
      ),
    );
  }
}
