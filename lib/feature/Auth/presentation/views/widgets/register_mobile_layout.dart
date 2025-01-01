import 'package:books_app/core/utils/app_style.dart';
import 'package:books_app/feature/Auth/presentation/views/widgets/custom_button.dart';
import 'package:books_app/feature/Auth/presentation/views/widgets/form_column.dart';
import 'package:books_app/feature/Auth/presentation/views/widgets/register_minmize_layout.dart';
import 'package:flutter/material.dart';

class RegisterMobileLayout extends StatelessWidget {
  const RegisterMobileLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return MediaQuery.sizeOf(context).height < 540
        ? const RegisterMinmizeLayout()
        : Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: CustomScrollView(
              physics: const BouncingScrollPhysics(),
              slivers: [
                SliverFillRemaining(
                  hasScrollBody: false,
                  child: Column(
                    children: [
                      const Spacer(),
                      const FormColumn(),
                      const SizedBox(
                        height: 32,
                      ),
                      SizedBox(
                        width: MediaQuery.sizeOf(context).width,
                        child: const CutomButton(),
                      ),
                      const Spacer(
                        flex: 2,
                      ),
                      // when open keybord
                      const SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("Already a member?",
                              style: AppStyle.styleRegular14(context)),
                          const SizedBox(
                            width: 10,
                          ),
                          GestureDetector(
                            child: Text(
                              'SignIn',
                              style: AppStyle.styleSemibold14(context)
                                  .copyWith(color: const Color(0xff000000)),
                            ),
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => PageView(),
                                  ));
                            },
                          )
                        ],
                      ),
                      const SizedBox(
                        height: 23,
                      )
                    ],
                  ),
                )
              ],
            ),
          );
  }
}
