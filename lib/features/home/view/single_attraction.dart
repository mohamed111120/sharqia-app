import 'package:flutter/material.dart';
import 'package:sharqia_app/core/utils/text_styles.dart';
import 'package:sharqia_app/features/home/model/category_model.dart';
import 'package:sharqia_app/features/home/view/widgets/custom_categoris_app_bar.dart';

class SingleAttraction extends StatelessWidget {
  const SingleAttraction({
    super.key,
    required this.attractionsModel,
  });

  final AttractionsModel attractionsModel;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            children: [
              const CustomCategoriesAppBar(),
              Text(
                attractionsModel.name,
                style: AppStyles.style22.copyWith(fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 10,
              ),
              ClipRRect(
                borderRadius: BorderRadius.circular(30),
                child: Image.asset(
                  attractionsModel.image,
                  height: 500,
                ),
              ),
              const SizedBox(height: 15,),
              Text(
                attractionsModel.details ?? '',
                style: TextStyle(fontSize: 18),
              )
            ],
          ),
        ),
      ),
    );
  }
}