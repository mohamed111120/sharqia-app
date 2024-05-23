import 'package:flutter/material.dart';

import '../../../../core/utils/custom_text_form_field.dart';

class SignUpFormSection extends StatelessWidget {
  const SignUpFormSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      CustomTextFormField(hintText: 'Enter your name',),
      CustomTextFormField(hintText: 'Last name'),
      CustomTextFormField(hintText: 'Email/phone number',),
      CustomTextFormField(hintText: 'Password',),
      CustomTextFormField(hintText: 'Confirm Password',),
      CustomTextFormField(hintText: 'gender',),
      CustomTextFormField(hintText: 'date of birth',),
      CustomTextFormField(hintText: 'Nationality',),
    ],);
  }
}
