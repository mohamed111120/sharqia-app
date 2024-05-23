import 'package:flutter/material.dart';

import '../../../../core/constants/app_colors.dart';
import '../../../../core/utils/custom_button.dart';
import '../../../../core/utils/custom_text_form_field.dart';

class SignInFristSection extends StatelessWidget {
  const SignInFristSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
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
          height: 50,
        ),
        CustomTextFormField(hintText: 'Email/phone number ',),
        SizedBox(
          height: 15,
        ),
        CustomTextFormField(hintText: 'Password',),
        SizedBox(
          height: 25,
        ),
        CustomButton(text: 'Sign IN'),
      ],
    );
  }
}
