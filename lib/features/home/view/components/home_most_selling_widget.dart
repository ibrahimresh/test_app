import 'package:flutter/material.dart';
import 'package:flutter_test_app/core/constants/app_colors.dart';
import 'package:flutter_test_app/features/home/view/components/home_background_container.dart';
import 'package:flutter_test_app/features/home/view/components/home_most_selling_item_widget.dart';

class HomeMostSellingWidget extends StatelessWidget {
  const HomeMostSellingWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(16),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'الأكثر مبيعاً',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w700,
                  color: Colors.black,
                ),
              ),
              Text(
                'عرض الجميع',
                style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w400,
                  color: AppColors.greyColor,
                ),
              )
            ],
          ),
          SizedBox(height: 20),
          HomeBackgroundContainer(
            child: Column(
              children: [
                HomeMostSellingItemWidget(),
                HomeMostSellingItemWidget(),
                HomeMostSellingItemWidget(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
