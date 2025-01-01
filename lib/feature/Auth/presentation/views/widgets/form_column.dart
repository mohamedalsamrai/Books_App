import 'package:books_app/core/utils/app_style.dart';
import 'package:books_app/feature/Auth/presentation/views/widgets/custom_textfield.dart';
import 'package:flutter/material.dart';

class FormColumn extends StatelessWidget {
  const FormColumn({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Please fill your details to signup.',
          style: AppStyle.styleRegular16(context),
        ),
        const SizedBox(
          height: 32,
        ),
        const CustomeForm(
          text: 'Username',
        ),
        const SizedBox(
          height: 24,
        ),
        const CustomeForm(
          text: 'Email',
        ),
        const SizedBox(
          height: 24,
        ),
        const CustomeForm(
          text: 'Password',
        ),
        const SizedBox(
          height: 24,
        ),
        const CustomeForm(
          text: 'Confirm Password',
        )
      ],
    );
  }
}
