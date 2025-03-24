import 'package:flutter/material.dart';
import 'package:flutter_test_app/config/routing/app_routes.dart';
import 'package:flutter_test_app/core/constants/app_colors.dart';

class CustomFloatingButton extends StatelessWidget {
  const CustomFloatingButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Container(
        width: 58,
        height: 58,
        margin: const EdgeInsets.only(bottom: 25),
        decoration: const BoxDecoration(
          shape: BoxShape.circle,
          color: AppColors.blueColor,
        ),
        child: IconButton(
          icon: const Icon(Icons.add, color: Colors.white, size: 34),
          onPressed: () {
            Navigator.pushNamed(context, AppRoutes.addInvoiceItemsScreen);
          },
        ),
      ),
    );
  }
}
