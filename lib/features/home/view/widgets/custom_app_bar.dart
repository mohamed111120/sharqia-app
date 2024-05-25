import 'package:flutter/material.dart';

import '../../../../core/constants/app_colors.dart';
import 'custom_app_bar_icon.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return  const Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        CustomAppBarIcon(iconData: Icons.import_contacts_sharp,),
        Row(
          children: [
            Icon(
              Icons.location_on_sharp,
              color: AppColors.primary,
            ),
            Text(
              'Shraqia',
              style: TextStyle(
                color: AppColors.primary,
              ),
            )
          ],
        ),
        CustomAppBarIcon(iconData:   Icons.notifications_none_outlined),
      ],
    );
  }
}
