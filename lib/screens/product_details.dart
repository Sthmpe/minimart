import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:minimart/common/models/product_model.dart';
import 'package:minimart/util/constants/colors.dart';
import 'package:minimart/widgets/mobile_header.dart';
import 'package:minimart/widgets/return_bar.dart';

class ProductDetails extends StatelessWidget {
  ProductDetails({super.key});

  final ProductModel product = Get.arguments;

  @override
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            // Scrollable content - start below the fixed header
            Positioned.fill(
              top: 120, // Adjust based on height of fixed top widgets
              bottom: 80, // Space for bottom button
              child: SingleChildScrollView(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Place all scrollable content here
                    // For example:
                    Text('Scrollable product info or gallery'),
                    SizedBox(height: 600), // just example filler
                  ],
                ),
              ),
            ),
      
            // Fixed top section
            Positioned(
              top: 0,
              left: 0,
              right: 0,
              child: Column(
                children: [
                  const MobileHeader(showSearch: false),
                  ReturnBar(title: 'Go Back', onPressed: () => Get.back()),
                  const SizedBox(height: 12),
                ],
              ),
            ),
      
            // Fixed bottom button
            Positioned(
              left: 16,
              right: 16,
              bottom: 20,
              child: SizedBox(
                height: 94,
                width: double.infinity,
                child: Container(
                  padding: const EdgeInsets.only(left: 16, right: 16, top: 12),
                  color: MiniMartAppColors.white,
                  child: SizedBox(
                    height: 40,
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: () {
                        // TODO: Add action
                      },
                      child: Text(
                        'Price: \$${product.price.toStringAsFixed(2)}',
                        style: const TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
