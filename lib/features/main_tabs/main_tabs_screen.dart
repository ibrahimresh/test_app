import 'package:flutter/material.dart';
import 'package:flutter_test_app/features/home/view/home_widget.dart';
import 'package:flutter_test_app/features/main_tabs/compontents/custom_bottom_navigation_bar.dart';
import 'package:flutter_test_app/features/main_tabs/compontents/custom_floating_button.dart';
import 'package:flutter_test_app/features/main_tabs/compontents/custom_side_drawer.dart';
import 'package:flutter_test_app/features/points_of_sale/point_of_sale_widget.dart';
import 'package:flutter_test_app/features/profile/profile_widget.dart';
import 'package:flutter_test_app/features/scan/scan_widget.dart';

class MainTabsScreen extends StatefulWidget {
  const MainTabsScreen({super.key});

  @override
  State<MainTabsScreen> createState() => _MainTabsScreenState();
}

class _MainTabsScreenState extends State<MainTabsScreen> {
  final PageController _controller = PageController();
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  late List<Widget> _mainTabs;

  @override
  void initState() {
    _mainTabs = [
      HomeWidget(scaffoldKey: _scaffoldKey),
      const PointOfSaleWidget(),
      const SizedBox(),
      const ScanWidget(),
      const ProfileWidget(),
    ];
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      body: PageView(
        controller: _controller,
        children: _mainTabs,
      ),
      drawer: const CustomSideDrawer(),
      drawerScrimColor: const Color(0xFFB3B3B3).withOpacity(0.3),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: const CustomFloatingButton(),
      bottomNavigationBar: CustomBottomNavigationBar(
        pageController: _controller,
      ),
    );
  }
}
