import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:nov_project/presentation/home_screen/controller/Home_screenController.dart';
import 'package:nov_project/routes/PageList/PageList.dart';
import '../../data/apiClient/Patient_list/Patient_list_api.dart';
import '../../widgets/Custom_button/Custom_button.dart';
import 'models/Patient_list_Models/patient_list_model.dart';

class HomeScreen extends StatelessWidget {
  final HomeScreencontroller homeScreencontroller =
      Get.put(HomeScreencontroller());
  // @override

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.arrow_back),
        actions: [
          Icon(Icons.notifications_none),
          SizedBox(
            width: 10,
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SizedBox(
                    width: 250.w,
                    child: CupertinoTextField(
                        padding: EdgeInsets.all(12),
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.grey),
                            borderRadius: BorderRadius.circular(5)),
                        prefix: const Padding(
                          padding: EdgeInsets.only(left: 8),
                          child: Icon(Icons.search, color: Colors.grey),
                        ),
                        placeholder: 'Search for treatments')),
                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        fixedSize: Size(MediaQuery.of(context).size.width * .21,
                            MediaQuery.of(context).size.height * .046),
                        backgroundColor: Colors.green.shade800,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5))),
                    onPressed: () {},
                    child: const Text(
                      'Search',
                      style: TextStyle(color: Colors.white),
                    ))
              ],
            ),
            Padding(
              padding: EdgeInsets.all(20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'Sort by:',
                    style: TextStyle(fontWeight: FontWeight.w500, fontSize: 15),
                  ),
                  Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30.w),
                        border: Border.all(color: Colors.grey)),
                    width: 150.w,
                    child: const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('Date'),
                            Icon(Icons.arrow_drop_down_rounded)
                          ]),
                    ),
                  )
                ],
              ),
            ),
            Divider(
              height: 1,
              color: Colors.grey,
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * .6,
              child: Obx(() {
                if (homeScreencontroller.fetchedPatients.isEmpty) {
                  return Center(child: CircularProgressIndicator());
                }
        
                return ListView.builder(
                  itemCount: homeScreencontroller.fetchedPatients.length,
                  physics: BouncingScrollPhysics(),
                  scrollDirection: Axis.vertical,
                  shrinkWrap: true,
                  itemBuilder: (context, index) {
                    Patient patient = homeScreencontroller.fetchedPatients[index];
                    List<PatientdetailsSet>? patientDetailsSet =
                        patient.patientdetailsSet;
        
                    return Padding(
                      padding: const EdgeInsets.all(15),
                      child: Container(
                        height: 120.h,
                        width: double.infinity,
                        decoration: BoxDecoration(
                            color: Colors.grey.shade300,
                            borderRadius: BorderRadius.circular(10)),
                        child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Padding(
                                padding: EdgeInsets.only(left: 20),
                                child: Row(
                                  children: [
                                    Text(
                                      '${index + 1}. ${patient.user ?? 'test'}',
                                      style: TextStyle(
                                          fontSize: 18,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ],
                                ),
                              ),
                              Text(
                                patientDetailsSet!
                                    .map((detailsSet) =>
                                        detailsSet.treatmentName ?? 'null')
                                    .join(', '),
                                style: TextStyle(
                                  fontSize: 15,
                                  color: Colors.green.shade800,
                                ),
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: [
                                  Row(
                                    children: [
                                      Icon(Icons.calendar_month,
                                          color: Colors.red),
                                      Padding(
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 8.0),
                                        child: Text(homeScreencontroller.formatDate(
                                                '${patient.dateNdTime ?? ''}') ??
                                            'null'),
                                      ),
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Icon(Icons.people, color: Colors.red),
                                      Padding(
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 8.0),
                                        child: Text('${patient.name}'),
                                      ),
                                    ],
                                  )
                                ],
                              ),
                              Divider(
                                height: 1,
                                color: Colors.grey,
                              ),
                              const Padding(
                                padding: EdgeInsets.symmetric(horizontal: 20),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text('View Booking details',
                                        style: TextStyle(fontSize: 15)),
                                    Icon(Icons.arrow_forward_ios)
                                  ],
                                ),
                              )
                            ]),
                      ),
                    );
                  },
                );
              }),
            ),
            Custombutton(
              ele_txt: 'Register',
              ontap: () {
                Get.toNamed(Pagelist.Register_screen);
              },
            ),
          ],
        ),
      ),
    );
  }
}
