import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:http/http.dart' as http;
import 'package:get_storage/get_storage.dart';
import 'package:nov_project/routes/PageList/PageList.dart';
import '../../../core/constants/APi/Api.dart';
import '../../../presentation/home_screen/Home_screen.dart';
import '../../../tst.dart';

Future<void> loginUser(BuildContext context,
    {required String email, required String password}) async {
  if (email.isEmpty || password.isEmpty) {
    print('Please enter username and password');
    return;
  }
  String apiUrl = Api.loginUrl;

  Map<String, String> data = {
    'username': email,
    'password': password,
  };

  try {
    // Make the POST request
    var response = await http.post(Uri.parse(apiUrl), body: data);

    if (response.statusCode == 200) {
      var responseData = json.decode(response.body);
      String? token = responseData['token'];
      print(token);
      if (token != null) {
        final box = GetStorage();
        box.write('token', token);
        print('Token saved: $token');
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            backgroundColor: Colors.green,
            content: Text("Login successful"),
            duration: Duration(seconds: 2),
          ),
        );
        Get.toNamed(Pagelist.HomeScreen);
      } else {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            backgroundColor: Colors.red,
            content: Text("Failed to login"),
            duration: Duration(seconds: 2),
          ),
        );
        print('Token is null');
      }
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          backgroundColor: Colors.red,
          content: Text("Failed try again"),
          duration: Duration(seconds: 2),
        ),
      );
      print('Failed with status code: ${response.statusCode}');
    }
  } catch (error) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        backgroundColor: Colors.deepOrange,
        content: Text("Some error occured"),
        duration: Duration(seconds: 2),
      ),
    );
    print('Error: $error');
  }
}
