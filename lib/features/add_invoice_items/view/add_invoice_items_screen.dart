import 'package:flutter/material.dart';
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
      body: ListView.builder(
        itemCount: 4,
        padding: const EdgeInsets.only(top: 24),
        itemBuilder: (context, index) => const InvoiceItemWidget(),
      ),
    );
  }
}
