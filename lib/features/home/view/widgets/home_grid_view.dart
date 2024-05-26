import 'package:flutter/material.dart';

import '../../../../core/utils/CustomNavigator.dart';
import '../../veiw_model/home_cubit.dart';
import '../single_category.dart';
import 'custom_category_item.dart';

class HomeGridView extends StatelessWidget {
  const HomeGridView({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      padding: EdgeInsets.zero,
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: HomeCubit.get(context).categories.length,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
          childAspectRatio: .88),
      itemBuilder: (context, index) {
        return CustomCategoryItem(
          onTap: () {
            CustomNavigator.push(
                context,
                SingleCategory(
                  categoryName: HomeCubit.get(context).categories[index].name,
                  places: HomeCubit.get(context).categories[index].touristPlaces,
                ));
          },
          image: HomeCubit.get(context).categories[index].image,
          // height: 150,
          name: HomeCubit.get(context).categories[index].name,
        );
      },
    );
  }
}
