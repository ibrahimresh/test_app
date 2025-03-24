import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_test_app/core/constants/app_vectors.dart';

class InvoiceItemOptionsWidget extends StatelessWidget {
  const InvoiceItemOptionsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 10),
      margin: const EdgeInsetsDirectional.only(top: 14, end: 30, start: 78),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Row(
            children: [
              SvgPicture.asset(AppVectors.searchIcon),
              const SizedBox(width: 8),
              const Expanded(
                child: Text(
                  'ابحث هنا',
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                    color: Colors.black,
                  ),
                ),
              ),
              SvgPicture.asset(AppVectors.scannerIcon),
              const Icon(
                Icons.keyboard_arrow_up_rounded,
                color: Colors.black,
              ),
            ],
          ),
          const SizedBox(height: 12),
          const Divider(color: Colors.black),
          Flexible(
            fit: FlexFit.loose,
            child: ListView.separated(
              itemCount: 10,
              padding: EdgeInsets.zero,
              separatorBuilder: (context, index) => const Divider(
                color: Color(0xFFEDEDED),
              ),
              itemBuilder: (context, index) => const OptionRow(),
            ),
          )
        ],
      ),
    );
  }
}

class OptionRow extends StatelessWidget {
  const OptionRow({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(vertical: 8),
      child: Row(
        children: [
          Text(
            '150',
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w400,
              color: Colors.black,
            ),
          ),
          Expanded(
            child: Center(
              child: Text(
                'طابعة ملصقات MOHD ',
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w400,
                  color: Colors.black,
                ),
              ),
            ),
          ),
          Text(
            '450.000 د.ع',
            style: TextStyle(
              fontSize: 10,
              fontWeight: FontWeight.w700,
              color: Colors.black,
            ),
          ),
        ],
      ),
    );
  }
}
