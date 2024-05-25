import 'package:flutter/material.dart';
import 'package:sharqia_app/core/utils/CustomNavigator.dart';
import 'package:sharqia_app/core/utils/text_styles.dart';
import 'package:sharqia_app/features/auth/view/sign_up_view.dart';

import '../../../../core/constants/app_colors.dart';
import '../../../../core/utils/custom_button.dart';

class SignInSecondSection extends StatelessWidget {
  const SignInSecondSection({super.key});

  @override
  Widget build(BuildContext context) {
    return  Column(
      children: [
         Text(
          textAlign: TextAlign.center,
          'if you forget your password',
          style: AppStyles.style22.copyWith(
            fontWeight: FontWeight.w600
          )
        ),
        const CustomButton(text: 'Forget Password'),
        const SizedBox(
          height: 40,
        ),
         Text(
          textAlign: TextAlign.center,
          'if you don’t an account you can',
          style:AppStyles.style22.copyWith(
              fontWeight: FontWeight.w600
          )
        ),
        CustomButton(text: ' Register here!',onPressed: () {
        CustomNavigator.push(context, SignUpView());
        },),
      ],
    );
  }
}
