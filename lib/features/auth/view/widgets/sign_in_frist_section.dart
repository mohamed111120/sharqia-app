import 'package:flutter/material.dart';
import 'package:sharqia_app/core/utils/text_styles.dart';

import '../../../../core/constants/app_colors.dart';
import '../../../../core/utils/custom_button.dart';
import '../../../../core/utils/custom_text_form_field.dart';

class SignInFirstSection extends StatelessWidget {
  const SignInFirstSection({super.key});

  @override
  Widget build(BuildContext context) {
    return  Column(
      children: [
        const SizedBox(
          height: 50,
        ),
        const Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Text(
              'Engish',
              style: AppStyles.style18,
            ),
            Icon(Icons.arrow_drop_down_outlined,color: AppColors.primary,),
          ],
        ),
        const SizedBox(
          height: 80,
        ),
        Text(
          'Sign In to recharge Direct',
          style: AppStyles.style28.copyWith(fontWeight: FontWeight.w600),
        ),
        const SizedBox(
          height: 50,
        ),
        const CustomTextFormField(
          hintText: 'Email/phone number ',
        ),
        const SizedBox(
          height: 15,
        ),
        const CustomTextFormField(
          hintText: 'Password',
        ),
        const SizedBox(
          height: 25,
        ),
        const CustomButton(text: 'Sign IN'),
      ],
    );
  }
}
