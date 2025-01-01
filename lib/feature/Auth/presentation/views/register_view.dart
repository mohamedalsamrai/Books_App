import 'package:books_app/core/utils/app_style.dart';
import 'package:books_app/feature/Auth/presentation/views/widgets/desktop_layout.dart';
import 'package:books_app/feature/Auth/presentation/views/widgets/register_mobile_layout.dart';
import 'package:books_app/feature/Auth/presentation/views/widgets/register_tablet_layout.dart';
import 'package:flutter/material.dart';
import 'package:books_app/core/widgets/adaptive_layout.dart';

class RegisterView extends StatelessWidget {
  const RegisterView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffF2F2F2),
      appBar: AppBar(
        backgroundColor: const Color(0xffF2F2F2),
        centerTitle: true,
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.arrow_back,
            color: Color(0xff121212),
          ),
        ),
        title: Text(
          "Register",
          style: AppStyle.styleSemiBold24(context),
        ),
      ),
      body: SafeArea(
        child: AdaptiveLayout(
          desktopLayout: (context) => const DesktopLayout(),
          tabletLayout: (context) => const RegisterTabletLayout(),
          mobileLayout: (context) => const RegisterMobileLayout(),
        ),
      ),
    );
  }
}
