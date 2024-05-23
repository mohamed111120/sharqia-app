import 'package:flutter/material.dart';
import 'package:sharqia_app/core/constants/app_colors.dart';
import 'package:sharqia_app/core/utils/custom_button.dart';
import 'package:sharqia_app/features/auth/view/widgets/sign_in_frist_section.dart';
import 'package:sharqia_app/features/auth/view/widgets/sign_in_second_section.dart';

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
          SignInFristSection(),
          SizedBox(height: 50,),
          SignInSecondSection(),
        ],
      ),
    ));
  }
}
