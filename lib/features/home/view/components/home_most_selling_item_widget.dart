import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_test_app/core/constants/app_colors.dart';
import 'package:flutter_test_app/core/constants/app_vectors.dart';

class HomeMostSellingItemWidget extends StatelessWidget {
  const HomeMostSellingItemWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10),
      child: Row(
        children: [
          SvgPicture.asset(AppVectors.mostSellingIcon),
          const SizedBox(width: 12),
          const Expanded(
            child: Text(
              'طابعة',
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w700,
                color: AppColors.greyColor,
              ),
            ),
          ),
          const SizedBox(width: 2),
          const Expanded(
            child: Text(
              'قطعة',
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w700,
                color: AppColors.greyColor,
              ),
            ),
          ),
          const SizedBox(width: 2),
          const Text(
            '5',
            style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w700,
              color: AppColors.greyColor,
            ),
          ),
        ],
      ),
    );
  }
}
