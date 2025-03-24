import 'package:flutter/material.dart';
import 'package:flutter_test_app/features/home/view/components/home_bonds_widget.dart';
import 'package:flutter_test_app/features/home/view/components/home_carousel_widget.dart';
import 'package:flutter_test_app/features/home/view/components/home_most_selling_widget.dart';
import 'package:flutter_test_app/features/home/view/components/home_previous_invoices_widget.dart';
import 'package:flutter_test_app/features/home/view/components/home_sliver_app_bar.dart';

class HomeWidget extends StatelessWidget {
  const HomeWidget({super.key, required this.scaffoldKey});

  final GlobalKey<ScaffoldState> scaffoldKey;

  @override
  Widget build(BuildContext context) {
    return NestedScrollView(
      floatHeaderSlivers: true,
      headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) => [
        HomeSliverAppBar(scaffoldKey: scaffoldKey),
      ],
      body: const CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: Column(
              children: [
                HomeCarouselWidget(),
                HomeMostSellingWidget(),
                HomePreviousInvoicesWidget(),
                HomeBondsWidget()
              ],
            ),
          )
        ],
      ),
    );
  }
}
