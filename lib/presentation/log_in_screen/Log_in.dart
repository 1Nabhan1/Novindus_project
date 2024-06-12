import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/get_instance.dart';
import 'package:nov_project/presentation/log_in_screen/controller/Log_in_controller.dart';

import '../../data/apiClient/Login_api/Login_api.dart';
import '../../widgets/Custom_button/Custom_button.dart';
import 'Widget/cstm_field/cstm_field.dart';

class LogIn extends StatelessWidget {
  LogIn({super.key});
  final LogInController logInController = Get.put(LogInController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Form(
          key: logInController.keyForm,
          child: Column(
            children: [
              Container(
                height: 200.h,
                width: double.infinity.w,
                decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('assets/log_headimg.png'),
                      fit: BoxFit.cover),
                ),
                child: Image.asset(
                  'assets/log_symbol.png',
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 28.0),
                child: Text(
                  'Login Or Register To Book\nYour Appointment ',
                  style: TextStyle(
                      fontWeight: FontWeight.w600,
                      color: Colors.grey.shade800,
                      fontSize: 30),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  left: 40.0,
                ),
                child: Row(
                  children: [
                    Text(
                      'Email',
                      style: TextStyle(fontWeight: FontWeight.w500),
                    ),
                  ],
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 8, horizontal: 30),
                child: Customtextfield(
                  control: logInController.emailC,
                  hint_txt: 'Enter your email',
                  fcclr: Colors.black,
                  bdr_radius: 10,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 40.0, top: 30),
                child: Row(
                  children: [
                    Text(
                      'Password',
                      style: TextStyle(fontWeight: FontWeight.w500),
                    ),
                  ],
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 8, horizontal: 30),
                child: Customtextfield(
                  control: logInController.passwordC,
                  obscureText: true,
                  hint_txt: 'Enter Password',
                  fcclr: Colors.black,
                  bdr_radius: 10,
                ),
              ),
              SizedBox(height: 70),
              Custombutton(
                ele_txt: 'Login',
                ontap: () {
                  bool isValid =
                      logInController.keyForm.currentState!.validate();
                  if (isValid) {
                    loginUser(context,
                        email: logInController.emailC.text,
                        password: logInController.passwordC.text);
                  }
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
