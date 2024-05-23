import 'package:flutter/material.dart';
import 'package:sharqia_app/core/constants/app_colors.dart';
import 'package:sharqia_app/core/constants/app_images.dart';
import 'package:sharqia_app/core/utils/custom_button.dart';

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
            SizedBox(height: 20,),

            Text('Your Sign up was successful',style: TextStyle(color: AppColors.primary,fontWeight: FontWeight.bold,fontSize: 22),),
            SizedBox(height: 20,),
            CustomButton(text: 'Continue to Home'),
          ],
        ),
      ),
    );
  }
}
