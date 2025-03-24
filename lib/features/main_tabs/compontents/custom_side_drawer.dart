import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_test_app/core/constants/app_images.dart';
import 'package:flutter_test_app/core/enums/side_menu_items.dart';

class CustomSideDrawer extends StatelessWidget {
  const CustomSideDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 50),
            child: Image.asset(AppImages.appLogo, width: 106, height: 52),
          ),
          ...SideMenuItems.values.map(
            (item) => Padding(
              padding: const EdgeInsetsDirectional.only(bottom: 16, start: 16),
              child: Row(
                children: [
                  SvgPicture.asset(item.icon),
                  const SizedBox(width: 10),
                  Text(
                    item.title,
                    style: const TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w700,
                      color: Colors.black,
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
