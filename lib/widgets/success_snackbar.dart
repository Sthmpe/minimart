import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:minimart/util/constants/colors.dart';

void showSuccessSnackbar(String message) {
  Get.snackbar(
    '',
    '',
    snackPosition: SnackPosition.TOP,
    duration: 800.milliseconds,
    backgroundColor: Colors.transparent,
    padding: const EdgeInsets.all(0),
    borderRadius: 8,
    maxWidth: 335,
    titleText: Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: MiniMartAppColors.white,
        borderRadius: BorderRadius.circular(8),
        border: Border(
          left: BorderSide(
            color: MiniMartAppColors.success500,
            width: 4,
          ),
        ),
        boxShadow: [
          BoxShadow(
            color: MiniMartAppColors.black.withOpacity(0.15),
            blurRadius: 24,
            offset: const Offset(0, 16),
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Icon(
            Icons.check_circle_outline,
            color: MiniMartAppColors.success500,
            size: 24,
          ),
          SizedBox(
            width: 223,
            height: 20,
            child: Text(
              message,
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 14,
                color: MiniMartAppColors.grey700,
                height: 1.43,
              ),
            ),
          ),
          GestureDetector(
            onTap: () => Get.closeCurrentSnackbar(),
            child: Icon(
              Icons.close,
              color: MiniMartAppColors.grey700,
              size: 24,
            ),
          ),
        ],
      ),
    ),
  );
}
