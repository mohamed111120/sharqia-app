import 'package:flutter/material.dart';
import 'package:sharqia_app/core/constants/app_colors.dart';
import 'package:sharqia_app/core/utils/custom_button.dart';

import '../../../core/utils/custom_text_form_field.dart';

class SignInView extends StatelessWidget {
  const SignInView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        body: Padding(
      padding: EdgeInsets.all(16),
      child: Column(
        children: [
          SizedBox(
            height: 50,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text(
                'Engish',
                style: TextStyle(color: AppColors.primary, fontSize: 17),
              ),
            ],
          ),
          SizedBox(
            height: 80,
          ),
          Text(
            'Sign In to recharge Direct',
            style: TextStyle(
                color: AppColors.primary,
                fontSize: 28,
                fontWeight: FontWeight.w600),
          ),
          SizedBox(
            height: 80,
          ),
          CustomTextFormField(),
          SizedBox(
            height: 15,
          ),
          CustomTextFormField(),
          SizedBox(
            height: 50,
          ),
          CustomButton(text: 'Forget Password'),
          SizedBox(
            height: 100,
          ),
          Text(
            textAlign: TextAlign.center,
            'if you don’t an account \n you can Register here!',
            style: TextStyle(
                color: AppColors.primary,
                fontSize: 23,
                fontWeight: FontWeight.w600,

            ),
          ),

        ],
      ),
    ));
  }
}

