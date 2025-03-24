import 'package:flutter/material.dart';
import 'package:flutter_test_app/config/routing/app_routes.dart';
import 'package:flutter_test_app/features/add_invoice_items/view/add_invoice_items_screen.dart';
import 'package:flutter_test_app/features/main_tabs/main_tabs_screen.dart';

class RouteGenerator {
  static Widget getScreenByName({required RouteSettings settings}) {
    switch (settings.name) {
      case AppRoutes.mainTabsScreen:
        return const MainTabsScreen();
      case AppRoutes.addInvoiceItemsScreen:
        return const AddInvoiceItemsScreen();
      default:
        return const Scaffold(
          body: SafeArea(
            child: Text(
              'Route Error',
            ),
          ),
        );
    }
  }

  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    return MaterialPageRoute(
      builder: (context) => getScreenByName(settings: settings),
      settings: settings,
    );
  }

  static Route<dynamic> onUnknownRoute(RouteSettings settings) {
    return MaterialPageRoute(
      builder: (buildContext) => const Scaffold(
        body: SafeArea(
          child: Text('Route Error'),
        ),
      ),
      settings: null,
    );
  }
}
