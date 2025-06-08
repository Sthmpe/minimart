import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:get/get.dart';
import 'package:minimart/common/data/mockProduct.dart';
import 'package:minimart/common/models/product_model.dart';
import 'package:minimart/screens/product_details.dart';
import 'package:minimart/widgets/home_product_card.dart';
import 'package:minimart/widgets/mobile_header.dart';
import 'package:minimart/widgets/return_bar.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  final List<ProductModel> products = mockProducts;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Header section
          const MobileHeader(showSearch: true),

          ReturnBar(title: 'Technology'),

          const SizedBox(height: 12),

          Expanded(
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment:
                    CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16.0),
                    child: SizedBox(
                      height: 46,
                      width: 254,
                      child: Text(
                        'Smartphones, Laptops & Assecories',
                        maxLines: 2,
                        style: const TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w500,
                          height: 1.0,
                          letterSpacing: 0.0,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 2),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: MasonryGridView.count(
                      crossAxisCount: 2,
                      mainAxisSpacing: 10,
                      crossAxisSpacing: 15,
                      itemCount: products.length,
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      itemBuilder: (context, index) {
                        final product = products[index];
                        return GestureDetector(
                          onTap: () {
                            Get.to(
                              () => ProductDetails(), 
                              arguments: product,
                              curve: Curves.easeOut,
                              duration: 300.milliseconds
                            );
                          },
                          child: HomeProductCard(
                            imageUrl: product.imagePath,
                            title: product.name,
                            color: product.color,
                            price: product.price, 
                          ),
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
