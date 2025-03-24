import 'package:aligned_dialog/aligned_dialog.dart';
import 'package:flutter/material.dart';

class AlignedDialogHelper {
  static void showCustomAlignedDialog({required BuildContext context, required Widget child, bool showEffect = true}) {
    showAlignedDialog(
      context: context,
      builder: (context) => child,
      followerAnchor: Alignment.topLeft,
      targetAnchor: Alignment.topLeft,
      barrierColor: Colors.black12,
      duration: const Duration(milliseconds: 350),
    );
  }
}
