import 'package:books_app/core/utils/app_style.dart';
import 'package:flutter/material.dart';

class CustomeForm extends StatelessWidget {
  const CustomeForm({super.key, required this.text});

  final String text;
  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        filled: true,
        fillColor: const Color(0xffDEDEDE),
        border: outlineInputBorder(const Color(0xff121212)),
        enabledBorder: outlineInputBorder(const Color(0xffDEDEDE)),
        focusedBorder: outlineInputBorder(const Color(0xff121212)),
        hintText: text,
        hintStyle: AppStyle.styleRegular14(context),
      ),
    );
  }

  OutlineInputBorder outlineInputBorder(Color color) {
    return OutlineInputBorder(
      borderSide: BorderSide(color: color, width: 2),
    );
  }
}
