import 'package:flutter/material.dart';
import 'package:sharqia_app/core/constants/app_images.dart';
import 'package:sharqia_app/core/utils/text_styles.dart';
import 'package:sharqia_app/features/home/model/category_model.dart';
import 'package:sharqia_app/features/home/veiw_model/home_cubit.dart';
import 'package:sharqia_app/features/home/view/single_category.dart';
import 'package:sharqia_app/features/home/view/widgets/custom_app_bar.dart';
import 'package:sharqia_app/features/home/view/widgets/custom_category_item.dart';
import 'package:sharqia_app/features/home/view/widgets/home_grid_view.dart';

import '../../../core/utils/CustomNavigator.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
      padding: const EdgeInsets.all(16),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 50),
            const CustomAppBar(),
            const SizedBox(height: 20),
            Text('  Hi there 👋',
                style: AppStyles.style18.copyWith(color: Colors.black)),
            Text('Take a virtual Sharqia Governorate',
                style: AppStyles.style22.copyWith(
                    color: Colors.black, fontWeight: FontWeight.bold)),
            const SizedBox(height: 20),
            const HomeGridView()
          ],
        ),
      ),
    ));
  }
}
