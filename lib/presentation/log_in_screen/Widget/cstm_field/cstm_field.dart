import 'package:flutter/material.dart';

class Customtextfield extends StatelessWidget {
  final String? lbtxt;
  final String? pretxt;
  final String? hint_txt;
  final Color fcclr;
  final bool isvalid;
  final double bdr_radius;
  final bool obscureText;
  final Widget? suffix;
  final String? Function(String?)? validator;
  final ValueChanged<String>? onChanged;
  final TextEditingController? control;
  final AutovalidateMode? validmode;
  final TextInputType? keyboerd_type;
  final void Function(String?)? on_saved;
  final TextInputAction? txtinputact;

  const Customtextfield({
    Key? key,
    this.lbtxt,
    required this.fcclr,
    required this.bdr_radius,
    this.obscureText = false,
    this.validator,
    this.onChanged,
    this.isvalid = true,
    this.suffix,
    this.control,
    this.validmode,
    this.keyboerd_type,
    this.on_saved,
    this.txtinputact,
    this.pretxt,
    this.hint_txt,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
        keyboardType: keyboerd_type,
        onSaved: on_saved,
        controller: control,
        obscureText: obscureText,
        textInputAction: txtinputact,
        validator: validator,
        autovalidateMode: validmode,
        decoration: InputDecoration(
            disabledBorder:
                OutlineInputBorder(borderSide: BorderSide(color: Colors.grey)),
            errorBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(bdr_radius),
                borderSide: const BorderSide(
                  color: Colors.red,
                  width: 1,
                )),
            filled: true,
            fillColor: Colors.grey.shade200,
            enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  color: Colors.grey.shade300,
                ),
                borderRadius: BorderRadius.circular(bdr_radius)),
            focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: fcclr),
                borderRadius: BorderRadius.circular(bdr_radius)),
            labelText: lbtxt,
            hintText: hint_txt,
            focusColor: fcclr,
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(bdr_radius),
            ),
            suffixIcon: isvalid ? suffix : null,
            prefixText: pretxt),
        onChanged: onChanged);
  }

}
