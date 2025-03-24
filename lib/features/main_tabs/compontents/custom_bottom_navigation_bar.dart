import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_test_app/core/constants/app_colors.dart';
import 'package:flutter_test_app/core/constants/app_vectors.dart';

class CustomBottomNavigationBar extends StatefulWidget {
  const CustomBottomNavigationBar({super.key, required this.pageController});

  final PageController pageController;

  @override
  State<CustomBottomNavigationBar> createState() => _CustomBottomNavigationBarState();
}

class _CustomBottomNavigationBarState extends State<CustomBottomNavigationBar> {
  int _currentIndex = 0;

  @override
  void initState() {
    widget.pageController.addListener(() {
      _currentIndex = widget.pageController.page?.toInt() ?? 0;
      setState(() {});
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 20, right: 20, top: 7), // Padding around the navbar
      margin: const EdgeInsets.only(left: 24, right: 24, bottom: 20), // Padding around the navbar
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12), // Rounded corners
        boxShadow: const [
          BoxShadow(
            color: Colors.black12,
            blurRadius: 10,
            spreadRadius: 0,
            offset: Offset(0, 0),
          ),
        ], // Shadow effect
      ),
      child: Theme(
        data: Theme.of(context).copyWith(
          splashColor: Colors.transparent, // Removes ripple effect
          highlightColor: Colors.transparent, // Removes highlight effect
        ),
        child: BottomNavigationBar(
          currentIndex: _currentIndex,
          type: BottomNavigationBarType.fixed,
          backgroundColor: Colors.white,
          elevation: 0,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          items: const [
            BottomNavigationBarItem(
              icon: NavBarIcon(
                icon: AppVectors.homeIcon,
              ),
              activeIcon: NavBarActiveIcon(
                icon: AppVectors.homeIcon,
              ),
              label: '',
              backgroundColor: Colors.transparent,
            ),
            BottomNavigationBarItem(
              icon: NavBarIcon(
                icon: AppVectors.pointOfSaleIcon,
              ),
              activeIcon: NavBarActiveIcon(
                icon: AppVectors.pointOfSaleIcon,
              ),
              label: '',
              backgroundColor: Colors.transparent,
            ),
            //not used item to increase space between bar items
            BottomNavigationBarItem(
              icon: Icon(Icons.add),
              label: '',
              backgroundColor: Colors.transparent,
            ),
            //end of not used item
            BottomNavigationBarItem(
              icon: NavBarIcon(
                icon: AppVectors.scanIcon,
              ),
              activeIcon: NavBarActiveIcon(
                icon: AppVectors.scanIcon,
              ),
              label: '',
              backgroundColor: Colors.transparent,
            ),
            BottomNavigationBarItem(
              icon: NavBarIcon(
                icon: AppVectors.profileIcon,
              ),
              activeIcon: NavBarActiveIcon(
                icon: AppVectors.profileIcon,
              ),
              label: '',
              backgroundColor: Colors.transparent,
            ),
          ],
          onTap: (index) {
            //if user tabs on not used area, do nothing
            if (index == 2) return;
            widget.pageController.jumpToPage(index);
          },
        ),
      ),
    );
  }
}

class NavBarIcon extends StatelessWidget {
  const NavBarIcon({super.key, required this.icon});

  final String icon;

  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset(
      icon,
      colorFilter: const ColorFilter.mode(AppColors.greyColor, BlendMode.srcIn),
    );
  }
}

class NavBarActiveIcon extends StatelessWidget {
  const NavBarActiveIcon({super.key, required this.icon});

  final String icon;

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none, // Allow positioning outside bounds
      alignment: Alignment.bottomCenter,
      children: [
        SvgPicture.asset(
          icon,
          colorFilter: const ColorFilter.mode(AppColors.blueColor, BlendMode.srcIn),
        ),
        Positioned(
          bottom: -20,
          child: Container(
            width: 14,
            height: 7,
            decoration: const BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.vertical(
                  top: Radius.circular(50),
                )),
          ),
        ),
      ],
    );
  }
}
