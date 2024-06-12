import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:nov_project/presentation/Register_screen/controller/Register_controller.dart';
import 'package:nov_project/presentation/log_in_screen/Widget/cstm_field/cstm_field.dart';
import 'package:nov_project/widgets/Custom_button/Custom_button.dart';

import '../../data/apiClient/patient_update/patient_update_api.dart';

class RegisterScreen extends StatelessWidget {
  RegisterScreen({super.key});
  final RegisterController registerController = Get.put(RegisterController());
  Future<void> selectDate(BuildContext context) async {
    final DateTime? pickedDate = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(2000),
      lastDate: DateTime(2101),
    );
    if (pickedDate != null) {
      final DateFormat formatter = DateFormat('dd/MM/yyyy-hh:mm a');
      final String formattedDate = formatter.format(pickedDate);
      registerController.TdateC.text = formattedDate;
    }
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading:
            GestureDetector(onTap: Get.back, child: Icon(Icons.arrow_back)),
        actions: [
          Icon(Icons.notifications_none),
          SizedBox(
            width: 10,
          ),
        ],
      ),
      body: SingleChildScrollView(
          child: Form(
        key: registerController.formKey,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(15),
              child: Row(
                children: [
                  Text(
                    'Register',
                    style: TextStyle(
                        fontWeight: FontWeight.w600,
                        color: Colors.grey.shade800,
                        fontSize: 30),
                  ),
                ],
              ),
            ),
            Divider(
              height: 1,
              color: Colors.grey,
            ),
            SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 18.0),
              child: Text(
                'Name',
                style: TextStyle(fontWeight: FontWeight.w500, fontSize: 18),
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 18.0, vertical: 10),
              child: Customtextfield(
                hint_txt: 'Enter your name',
                control: registerController.nameC,
                fcclr: Colors.blueGrey,
                bdr_radius: 10,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 18.0),
              child: Text(
                'Phone number',
                style: TextStyle(fontWeight: FontWeight.w500, fontSize: 18),
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 18.0, vertical: 10),
              child: Customtextfield(
                hint_txt: 'Enter your phone',
                control: registerController.phoneC,
                fcclr: Colors.blueGrey,
                bdr_radius: 10,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 18.0),
              child: Text(
                'Address',
                style: TextStyle(fontWeight: FontWeight.w500, fontSize: 18),
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 18.0, vertical: 10),
              child: Customtextfield(
                hint_txt: 'Enter your address',
                control: registerController.addressC,
                fcclr: Colors.blueGrey,
                bdr_radius: 10,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 18.0),
              child: Text(
                'Treatment date',
                style: TextStyle(fontWeight: FontWeight.w500, fontSize: 18),
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 18.0, vertical: 10),
              child: Customtextfield(
                hint_txt: 'Select your Date',
                control: registerController.TdateC,
                fcclr: Colors.blueGrey,
                suffix: IconButton(
                    onPressed: () => selectDate(context),
                    icon: Icon(Icons.calendar_month)),
                bdr_radius: 10,
                onChanged: (selectedDate) {
                  DateTime parsedDate =
                      DateFormat("yyyy-MM-ddTHH:mm:ss").parse(selectedDate);
                  registerController.TdateC.text =
                      DateFormat("yyyy-MM-ddTHH:mm:ss").format(parsedDate);
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Container(
                height: 100,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.grey.shade300,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            'Male',
                            style: TextStyle(
                                fontWeight: FontWeight.w500, fontSize: 18),
                          ),
                        ),
                        SizedBox(
                            height: 30.h,
                            width: 30.w,
                            child: CupertinoTextField(
                              controller: registerController.maleC,
                              keyboardType: TextInputType.number,
                              padding: EdgeInsets.all(11),
                            ))
                      ],
                    ),
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            'Female',
                            style: TextStyle(
                                fontWeight: FontWeight.w500, fontSize: 18),
                          ),
                        ),
                        SizedBox(
                            height: 30.h,
                            width: 30.w,
                            child: CupertinoTextField(
                              controller: registerController.femaleC,
                              keyboardType: TextInputType.number,
                              padding: EdgeInsets.all(11),
                            ))
                      ],
                    )
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 18.0),
              child: Text(
                'Branch',
                style: TextStyle(fontWeight: FontWeight.w500, fontSize: 18),
              ),
            ),
            Obx(
              () => Padding(
                padding: const EdgeInsets.all(20.0),
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.grey.shade200,
                      borderRadius: BorderRadius.circular(10)),
                  child: DropdownButton<String>(
                    dropdownColor: Colors.grey.shade300,
                    isExpanded: true,
                    borderRadius: BorderRadius.circular(10),
                    hint: Text('Select Branch'),
                    value: registerController.initialSelect.value,
                    onChanged: (String? value) {
                      registerController.initialSelect.value = value!;
                    },
                    items: registerController.branches.map((branch) {
                      return DropdownMenuItem<String>(
                        value: branch.name,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(branch.name),
                        ),
                      );
                    }).toList(),
                  ),
                ),
              ),
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Custombutton(
                    ontap: () {
                      updatePatient(
                          branch: registerController.branches
                              .firstWhere((branch) =>
                                  branch.name ==
                                  registerController.initialSelect.value)
                              .id
                              .toString(),
                          name: registerController.nameC.text,
                          address: registerController.addressC.text,
                          date_time: registerController.TdateC.text,
                          female: registerController.femaleC.text,
                          male: registerController.maleC.text,
                          phone: registerController.phoneC.text,
                          context);
                    },
                    ele_txt: 'Save'),
              ],
            )
          ],
        ),
      )),
    );
  }
}
