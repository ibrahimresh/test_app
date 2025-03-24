
import 'package:flutter_test_app/core/constants/app_images.dart';
import 'package:flutter_test_app/core/constants/app_vectors.dart';

enum CarouselItems {
  todayProfit,
  monthProfit,
  todaySells,
  todayPurchases
}

extension CarouselItemsExtension on CarouselItems {
  String get icon {
    switch(this) {
      case CarouselItems.todayProfit:
        return AppVectors.carouselProfitToday;
      case CarouselItems.monthProfit:
        return AppVectors.carouselProfit;
      case CarouselItems.todaySells:
        return AppVectors.carouselSells;
      case CarouselItems.todayPurchases:
        return AppVectors.carouselCart;
    }
  }

  String get title {
    switch(this) {
      case CarouselItems.todayProfit:
        return 'أرباح اليوم';
      case CarouselItems.monthProfit:
        return 'ارباح الشهر';
      case CarouselItems.todaySells:
        return 'مبيعات اليوم';
      case CarouselItems.todayPurchases:
        return 'مشتريات اليوم';
    }
  }

  String get backgroundImage {
    switch(this) {
      case CarouselItems.todayProfit:
        return AppImages.carouselProfitToday;
      case CarouselItems.monthProfit:
        return AppImages.carouselProfit;
      case CarouselItems.todaySells:
        return AppImages.carouselSells;
      case CarouselItems.todayPurchases:
        return AppImages.carouselCart;
    }
  }
}