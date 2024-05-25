import 'package:flutter/material.dart';
import 'package:sharqia_app/core/constants/app_images.dart';
import 'package:sharqia_app/core/utils/CustomNavigator.dart';
import 'package:sharqia_app/core/utils/custom_button.dart';
import 'package:sharqia_app/features/home/view/home_view.dart';

import '../../../core/utils/text_styles.dart';

class SuccessSignView extends StatelessWidget {
  const SuccessSignView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(AppImages.correctCheck),
            const SizedBox(height: 20,),
            Text('Your Sign up was successful',style:  AppStyles.style22.copyWith(fontWeight: FontWeight.w600),),
            const SizedBox(height: 20,),
            CustomButton(text: 'Continue to Home',onPressed: () {
             CustomNavigator.pushAndRemoveUtil(context, const HomeView());
            },),
          ],
        ),
      ),
    );
  }
}
