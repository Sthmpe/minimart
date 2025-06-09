import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import 'package:minimart/bloc/cart_bloc/cart_bloc.dart';
import 'package:minimart/bloc/cart_bloc/cart_event.dart';
import 'package:minimart/common/models/product_model.dart';
import 'package:minimart/util/constants/colors.dart';
import 'package:minimart/widgets/bottom_button.dart';
import 'package:minimart/widgets/mobile_header.dart';
import 'package:minimart/widgets/product_details_product_card.dart';
import 'package:minimart/widgets/product_discription_widget.dart';
import 'package:minimart/widgets/return_bar.dart';
import 'package:minimart/widgets/success_snackbar.dart';

class ProductDetails extends StatelessWidget {
  ProductDetails({super.key});

  final ProductModel product = Get.arguments;

  @override
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        bottomNavigationBar: BottomButton(
          name: 'Add to Cart',
          onTap: () {
            showSuccessSnackbar('Item has been added to cart');
            context.read<CartBloc>().add(AddProductToCart(product));
          },
        ),
        body: Column(
          children: [
            const MobileHeader(showSearch: false),
            ReturnBar(title: 'Go Back', onPressed: () => Get.back()),
            const SizedBox(height: 10),
            Expanded(
              child: SingleChildScrollView(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ProductDetailsProductCard(
                      imageUrl: product.imagePath,
                      title: product.name,
                      color: product.color,
                      price: product.price,
                    ),
                    const SizedBox(height: 15),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20.0),
                      child: Text(
                        'About this product\n',
                        style: const TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          color: MiniMartAppColors.unSelected,
                          height: 1.0,
                          letterSpacing: 0.0,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20.0),
                      child: ProductDescription(
                        description: product.description,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
