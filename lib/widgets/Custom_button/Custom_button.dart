import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Custombutton extends StatelessWidget {
  final String ele_txt;
  final void Function()? ontap;

  const Custombutton({super.key, required this.ele_txt, this.ontap});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        style: ElevatedButton.styleFrom(
            backgroundColor: Colors.green.shade800,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
            fixedSize: Size(300.w, 43.h)),
        onPressed: ontap,
        child: Text(
          ele_txt,
          style: const TextStyle(color: Colors.white),
        ));
  }
}
