import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_test_app/core/constants/app_colors.dart';
import 'package:flutter_test_app/core/constants/app_vectors.dart';
import 'package:flutter_test_app/features/add_invoice_items/view/components/invoice_item_widget.dart';
import 'package:flutter_test_app/features/shared/widgets/back_icon_widget.dart';
import 'package:flutter_test_app/features/shared/widgets/notifications_icon_widget.dart';

class AddInvoiceItemsScreen extends StatelessWidget {
  const AddInvoiceItemsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        toolbarHeight: 75,
        title: const Row(
          children: [
            BackIconWidget(),
            Expanded(
              child: Center(child: Text('إضافة مواد الفاتورة')),
            ),
            NotificationsIconWidget(),
          ],
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: 4,
              padding: const EdgeInsets.only(top: 24),
              itemBuilder: (context, index) => const InvoiceItemWidget(),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20),
            child: SizedBox(
              width: double.infinity,
              height: 46,
              child: DottedBorder(
                color: AppColors.greyColor,
                radius: const Radius.circular(12),
                borderType: BorderType.RRect,
                strokeWidth: 0.5,
                dashPattern: const [4,3],
                child: Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        'إضافة مادة',
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w600,
                          color: Colors.black,
                        ),
                      ),
                      const SizedBox(width: 16),
                      SvgPicture.asset(AppVectors.addCounter, width: 32, height: 32),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
