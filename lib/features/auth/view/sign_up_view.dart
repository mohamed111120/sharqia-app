import 'package:flutter/material.dart';
import 'package:sharqia_app/core/utils/custom_button.dart';
import 'package:sharqia_app/core/utils/custom_text_form_field.dart';
import 'package:sharqia_app/features/auth/view/success_sign_view.dart';

import '../../../core/constants/app_colors.dart';
import '../../../core/utils/text_styles.dart';
import 'widgets/sign_up_form_section.dart';

class SignUpView extends StatelessWidget {
  const SignUpView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(
                height: 50,
              ),
              Text(
                'Welcome',
                style: AppStyles.style28.copyWith(fontWeight: FontWeight.w600),
              ),
              Text(
                'Sign up for the Chunky app',
                style: AppStyles.style22.copyWith(fontWeight: FontWeight.w600),
              ),
              const SizedBox(
                height: 30,
              ),
              const SignUpFormSection(),
              Row(
                children: [
                  Checkbox(
                    fillColor: WidgetStateProperty.all(AppColors.primary),
                    value: true,
                    onChanged: (value) {},
                  ),
                  const Expanded(
                    child: Text(
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      'By clicking on ‘sign up’, you’re agreeing to the Chunky app Terms of Service and Privacy Policy',
                      style: TextStyle(color: AppColors.primary),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              CustomButton(
                text: 'Sign Up',
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const SuccessSignView(),
                      ));
                },
              ),
              const SizedBox(
                height: 10,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
