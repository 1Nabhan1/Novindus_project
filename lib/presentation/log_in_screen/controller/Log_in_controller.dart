import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class LogInController extends GetxController{

  final GlobalKey<FormState> keyForm = GlobalKey();

  final TextEditingController emailC = TextEditingController();

  final TextEditingController passwordC = TextEditingController();
}