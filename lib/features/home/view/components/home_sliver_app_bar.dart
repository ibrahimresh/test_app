import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_test_app/core/constants/app_colors.dart';
import 'package:flutter_test_app/core/constants/app_images.dart';
import 'package:flutter_test_app/core/constants/app_vectors.dart';
import 'package:flutter_test_app/features/shared/widgets/notifications_icon_widget.dart';

class HomeSliverAppBar extends StatelessWidget {
  const HomeSliverAppBar({super.key, required this.scaffoldKey});

  final GlobalKey<ScaffoldState> scaffoldKey;

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      floating: true,
      snap: true,
      toolbarHeight: 75,
      leadingWidth: 55,
      elevation: 0,
      surfaceTintColor: Colors.transparent,
      backgroundColor: Colors.white,
      automaticallyImplyLeading: false, // Remove default menu icon
      leading: GestureDetector(
        onTap: () {
          scaffoldKey.currentState?.openDrawer(); // Open drawer manually
        },
        child: Container(
          width: 40,
          height: 40,
          margin: const EdgeInsetsDirectional.only(top: 18, bottom: 18, start: 16),
          padding: const EdgeInsets.all(8),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: AppColors.lightGreyColor,
          ),
          child: SvgPicture.asset(AppVectors.sideMenuIcon),
        ),
      ),
      actions: [
        const NotificationsIconWidget(),
        Container(
          height: 40,
          width: 40,
          margin: const EdgeInsetsDirectional.only(end: 16),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: AppColors.lightGreyColor,
          ),
          child: Image.asset(AppImages.profileImage),
        ),
      ],
    );
  }
}
