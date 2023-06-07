import 'package:flutter/material.dart';
import 'package:get/get.dart';

enum NotifType { success, warning, error }

extension NotifTypeExtension on NotifType {
  Color get color {
    if (this == NotifType.success) {
      return Colors.green;
    } else if (this == NotifType.warning) {
      return Colors.yellow;
    } else {
      return Colors.red;
    }
  }

  Icon get icon {
    if (this == NotifType.success) {
      return const Icon(Icons.check_circle);
    } else if (this == NotifType.warning) {
      return const Icon(Icons.warning);
    } else {
      return const Icon(Icons.cancel);
    }
  }
}

class Notifier {
  static final Notifier instance = Notifier._();

  Notifier._();

  void notify({
    final String? message,
    required final NotifType notifType,
    final Function? onTap,
  }) {
    Get.closeAllSnackbars();
    Get.showSnackbar(
      GetSnackBar(
        messageText: Column(
          children: [
            Container(
              padding: const EdgeInsets.all(12),
              width: double.infinity,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  notifType.icon,
                  const SizedBox(width: 8),
                  Flexible(
                    child: Text(
                      message ?? "Something went wrong!",
                      textDirection: TextDirection.ltr,
                      style: const TextStyle(fontSize: 14),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
        padding: EdgeInsets.zero,
        backgroundColor: notifType.color,
        duration: const Duration(seconds: 4),
        snackPosition: SnackPosition.TOP,
        forwardAnimationCurve: Curves.easeOutCubic,
        reverseAnimationCurve: Curves.easeOutCubic,
        animationDuration: const Duration(milliseconds: 240),
      ),
    );
  }
}
