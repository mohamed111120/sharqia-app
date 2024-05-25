import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sharqia_app/core/constants/app_colors.dart';
import 'package:sharqia_app/core/constants/app_images.dart';
import 'package:sharqia_app/core/utils/CustomNavigator.dart';
import 'package:sharqia_app/features/auth/view/sign_in_view.dart';

import '../../../core/utils/custom_button.dart';

class SplashView extends StatelessWidget {
  const SplashView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          const SizedBox(
            height: 50,
          ),
          Image.asset(AppImages.splash),
          CustomButton(
            onPressed: () {
              CustomNavigator.pushAndRemoveUtil(context, const SignInView());
            },
            text: 'Login',
          ),
          const SizedBox(
            height: 50,
          ),
        ],
      ),
    );
  }
}
