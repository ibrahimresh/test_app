import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:flutter_test_app/core/constants/app_colors.dart';
import 'package:flutter_test_app/core/helpers/aligned_dialog_helper.dart';
import 'package:flutter_test_app/features/add_invoice_items/view/components/invoice_item_counter_widget.dart';
import 'package:flutter_test_app/features/add_invoice_items/view/components/invoice_item_options_widget.dart';

class InvoiceItemWidget extends StatelessWidget {
  const InvoiceItemWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 20, left: 20, bottom: 12),
      child: Slidable(
        key: UniqueKey(),
        startActionPane: ActionPane(
          motion: const StretchMotion(), // Keeps options attached to the container
          extentRatio: 0.3,
          children: [
            SlidableAction(
              onPressed: (context) {},
              backgroundColor: AppColors.greyColor,
              padding: EdgeInsets.zero,
              label: 'المزيد',
              borderRadius: const BorderRadius.horizontal(
                right: Radius.circular(12),
              ),
            ),
            SlidableAction(
              onPressed: (context) {},
              backgroundColor: AppColors.blueColor,
              icon: Icons.edit,
              padding: EdgeInsets.zero,
              foregroundColor: Colors.white,
            ),
          ],
        ),
        endActionPane: ActionPane(
          motion: const StretchMotion(), // Keeps options attached to the container
          extentRatio: 0.15,
          children: [
            SlidableAction(
              onPressed: (context) {},
              backgroundColor: const Color(0xFFFE2E2E),
              icon: CupertinoIcons.delete,
              padding: EdgeInsets.zero,
              foregroundColor: Colors.white,
              borderRadius: const BorderRadius.horizontal(
                left: Radius.circular(12),
              ),
            ),
          ],
        ),
        child: Container(
          padding: const EdgeInsets.symmetric(vertical: 14, horizontal: 10),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            color: AppColors.lightGreyColor,
          ),
          child: Column(
            children: [
              Row(
                children: [
                  Container(
                    height: 40,
                    width: 40,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: const Text(
                      '150',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                        color: Colors.black,
                      ),
                    ),
                  ),
                  const SizedBox(width: 8),
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        AlignedDialogHelper.showCustomAlignedDialog(
                          context: context,
                          child: const InvoiceItemOptionsWidget(),
                        );
                      },
                      child: Container(
                        height: 40,
                        padding: const EdgeInsets.symmetric(horizontal: 12),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: const Row(
                          children: [
                            Expanded(
                                child: Text(
                              'طابعة ملصقات',
                              style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w400,
                                color: Colors.black,
                              ),
                            )),
                            Icon(
                              Icons.keyboard_arrow_down_rounded,
                              color: Colors.black,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 16),
              const Row(
                children: [
                  Text(
                    'السعر:',
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                      color: Colors.black,
                    ),
                  ),
                  SizedBox(width: 4),
                  Text(
                    '450.000 د.ع',
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w700,
                      color: Colors.black,
                    ),
                  ),
                  Spacer(),
                  InvoiceItemCounterWidget(),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
