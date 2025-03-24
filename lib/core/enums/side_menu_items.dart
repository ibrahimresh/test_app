import 'package:flutter_test_app/core/constants/app_vectors.dart';

enum SideMenuItems {
  home,
  stocks,
  accounts,
  purchases,
  sales,
  returns,
  debts,
  pointOfSale,
  fund,
}

extension SideMenuExtension on SideMenuItems {
  String get icon {
    switch (this) {
      case SideMenuItems.home:
        return AppVectors.sideMenuHome;
      case SideMenuItems.stocks:
        return AppVectors.sideMenuStocks;
      case SideMenuItems.accounts:
        return AppVectors.sideMenuAccounts;
      case SideMenuItems.purchases:
        return AppVectors.sideMenuPurchases;
      case SideMenuItems.sales:
        return AppVectors.sideMenuSales;
      case SideMenuItems.returns:
        return AppVectors.sideMenuReturns;
      case SideMenuItems.debts:
        return AppVectors.sideMenuDebts;
      case SideMenuItems.pointOfSale:
        return AppVectors.sideMenuPointsOfSale;
      case SideMenuItems.fund:
        return AppVectors.sideMenuFund;
    }
  }

  String get title {
    switch (this) {
      case SideMenuItems.home:
        return "الصفحة الرئيسية";
      case SideMenuItems.stocks:
        return "المخازن";
      case SideMenuItems.accounts:
        return "الحسابات";
      case SideMenuItems.purchases:
        return "المشتريات";
      case SideMenuItems.sales:
        return "المبيعات";
      case SideMenuItems.returns:
        return "المرتجعات";
      case SideMenuItems.debts:
        return "الديون";
      case SideMenuItems.pointOfSale:
        return "نقطة بيع";
      case SideMenuItems.fund:
        return "الصندوق";
    }
  }
}
