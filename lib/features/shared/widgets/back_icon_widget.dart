import 'package:flutter/material.dart';
import 'package:flutter_test_app/core/constants/app_colors.dart';

class BackIconWidget extends StatelessWidget {
  const BackIconWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        if (Navigator.canPop(context)) Navigator.pop(context);
      },
      child: Container(
        height: 40,
        width: 40,
        padding: const EdgeInsets.all(8),
        margin: const EdgeInsetsDirectional.only(start: 16),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: AppColors.lightGreyColor,
        ),
        child: const Icon(
          Icons.arrow_back_ios_rounded,
          color: AppColors.greyColor,
        ),
      ),
    );
  }
}
