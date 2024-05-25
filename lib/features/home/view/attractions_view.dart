import 'package:flutter/material.dart';
import 'package:sharqia_app/core/utils/CustomNavigator.dart';
import 'package:sharqia_app/core/utils/text_styles.dart';
import 'package:sharqia_app/features/home/model/category_model.dart';
import 'package:sharqia_app/features/home/view/single_attraction.dart';
import 'package:sharqia_app/features/home/view/widgets/custom_category_item.dart';

import 'widgets/custom_categoris_app_bar.dart';

class AttractionsView extends StatelessWidget {
  const AttractionsView({
    super.key,
    required this.attractions,
    required this.placeName,
  });

  final List<AttractionsModel> attractions;
  final String placeName;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
      padding: const EdgeInsets.all(16),
      child: SingleChildScrollView(
        child: Column(
          children: [
            CustomCategoriesAppBar(),
            Text(
              placeName,
              style: AppStyles.style22.copyWith(fontWeight: FontWeight.w600),
            ),
            SizedBox(
              height: 24,
            ),
            GridView.builder(
                padding: EdgeInsets.zero,
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: attractions.length,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 10,
                    childAspectRatio: .48,
                ),
                itemBuilder: (context, index) {
                  return CustomCategoryItem(
                    name: attractions[index].name,
                    image: attractions[index].image,
                    onTap: () {
                      CustomNavigator.push(
                        context,
                        SingleAttraction(
                          attractionsModel: attractions[index],
                        ),
                      );
                    },
                  );
                }),
          ],
        ),
      ),
    ));
  }
}
