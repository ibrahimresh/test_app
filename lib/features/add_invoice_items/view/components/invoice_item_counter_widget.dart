import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_test_app/core/constants/app_vectors.dart';

class InvoiceItemCounterWidget extends StatelessWidget {
  const InvoiceItemCounterWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SvgPicture.asset(AppVectors.addCounter),
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 12),
          child: Text(
            '10',
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w700,
              color: Colors.black,
            ),
          ),
        ),
        SvgPicture.asset(AppVectors.minusCounter),
      ],
    );
  }
}
