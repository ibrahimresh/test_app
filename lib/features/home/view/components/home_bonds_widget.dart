import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_test_app/core/constants/app_colors.dart';
import 'package:flutter_test_app/core/constants/app_vectors.dart';
import 'package:flutter_test_app/features/home/view/components/home_background_container.dart';

class HomeBondsWidget extends StatelessWidget {
  const HomeBondsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        children: [
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'السندات',
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
          const SizedBox(height: 20),
          HomeBackgroundContainer(
            child: Column(
              children: [
                const Text(
                  'لا يوجد سندات!',
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w700,
                    color: AppColors.greyColor,
                  ),
                ),
                SvgPicture.asset(AppVectors.noBonds),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
