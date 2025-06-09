import 'package:flutter/material.dart';
import 'package:minimart/util/constants/colors.dart';

class ProductDescription extends StatelessWidget {
  final String description;

  const ProductDescription({super.key, required this.description});

  @override
  Widget build(BuildContext context) {
    final descriptionPoints =
        description
            .trim()
            .split('\n')
            .where((line) => line.trim().isNotEmpty)
            .toList();

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children:
          descriptionPoints.map((point) {
            return Padding(
              padding: const EdgeInsets.symmetric(vertical: 4.0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    '• ',
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      color: MiniMartAppColors.unSelected,
                      height: 1,
                      letterSpacing: 0.0,
                    ),
                  ),
                  Expanded(
                    child: Text(
                      point,
                      style: const TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        color: MiniMartAppColors.unSelected,
                        height: 1,
                        letterSpacing: 0.0,
                      ),
                    ),
                  ),
                ],
              ),
            );
          }).toList(),
    );
  }
}
