import 'package:books_app/core/utils/app_style.dart';
import 'package:flutter/material.dart';

class CutomButton extends StatelessWidget {
  const CutomButton({super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: () {},
        style: ElevatedButton.styleFrom(
          padding: const EdgeInsets.symmetric(vertical: 13),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
          backgroundColor: const Color(0xff121212),
        ),
        child: Text(
          "Register",
          style: AppStyle.styleSemibold14(context),
        ));
  }
}
