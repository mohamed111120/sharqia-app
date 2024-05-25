import 'package:flutter/material.dart';
import '../../../../core/utils/text_styles.dart';

class CustomCategoryItem extends StatelessWidget {
  const CustomCategoryItem({super.key,  required this.name, required this.image, this.onTap});

  final String name;
  final String image;
  final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 3,
      shadowColor: Colors.grey,
      borderRadius: BorderRadius.circular(30),
      child: GestureDetector(
        onTap: onTap,
        child: Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(30),
            border: Border.all(color: Colors.black),
          ),
          child: Column(
            children: [
              ClipRRect(
                borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(30), topRight: Radius.circular(30)),
                child: Image.asset(
                  image,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10),
                child: Text(
                  name,
                  style: AppStyles.style18.copyWith(fontWeight: FontWeight.bold),
                  textAlign: TextAlign.center,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
