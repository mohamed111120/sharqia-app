import 'package:flutter/material.dart';

import '../constants/app_colors.dart';

class CustomButton extends StatelessWidget {

  const CustomButton({super.key, this.onPressed, required this.text});

  final void Function()? onPressed;
  final String text;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: const ButtonStyle(
          backgroundColor: WidgetStatePropertyAll(Colors.white),
          side: WidgetStatePropertyAll(BorderSide(color: Colors.black87)),
          fixedSize: WidgetStatePropertyAll(
            Size(200, 30),
          ),
          shadowColor: WidgetStatePropertyAll(Colors.black),
          elevation: WidgetStatePropertyAll(8)
      ),
      onPressed: onPressed,
      child: Text(
        text,
        style: const TextStyle(color: AppColors.primary),
      ),
    );
  }
}
