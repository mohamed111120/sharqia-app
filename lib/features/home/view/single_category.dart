import 'package:flutter/material.dart';
import 'package:sharqia_app/core/utils/CustomNavigator.dart';
import 'package:sharqia_app/core/utils/text_styles.dart';
import 'package:sharqia_app/features/home/model/category_model.dart';
import 'package:sharqia_app/features/home/view/attractions_view.dart';
import 'package:sharqia_app/features/home/view/widgets/custom_category_item.dart';
import 'widgets/custom_categoris_app_bar.dart';

class SingleCategory extends StatelessWidget {
  const SingleCategory({super.key, required this.places, required this.categoryName});

final List<TouristPlaceModel> places;
final String categoryName;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            const CustomCategoriesAppBar(),
            const SizedBox(height: 20,),
            Text(categoryName,style: AppStyles.style22.copyWith(fontWeight: FontWeight.w600),),
            ListView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: places.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.only(bottom: 20),
                  child: CustomCategoryItem(
                    name: places[index].name,
                    image: places[index].image,
                    onTap: () {
                      CustomNavigator.push(
                        context,
                        AttractionsView(
                          attractions:  places[index].attractions,
                          placeName: places[index].name,
                        ),
                      );
                    },
                  ),
                );
              },
            )
          ],
        ),
      ),
    );
  }
}
