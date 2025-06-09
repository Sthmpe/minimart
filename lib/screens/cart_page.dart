import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import 'package:minimart/bloc/cart_bloc/cart_bloc.dart';
import 'package:minimart/bloc/cart_bloc/cart_event.dart';
import 'package:minimart/bloc/cart_bloc/cart_state.dart';
import 'package:minimart/widgets/bottom_button.dart';
import 'package:minimart/widgets/cart_item_card.dart';
import 'package:minimart/widgets/mobile_header.dart';
import 'package:minimart/widgets/return_bar.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: BlocBuilder<CartBloc, CartState>(
        builder: (context, cartState) {
          final shippingFee = 10.00; // Example shipping fee
          final totalAmount = cartState.totalAmount + shippingFee;


          return Scaffold(
            bottomNavigationBar: BottomButton(
                    name: 'Checkout(\$${totalAmount.toInt()})',
                  ),
            body: BlocBuilder<CartBloc, CartState>(
              builder: (context, state) {
                return Column(
                  children: [
                    const MobileHeader(showSearch: false),
                    ReturnBar(title: 'Your Cart', onPressed: () => Get.back()),
                    const SizedBox(height: 10),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: SingleChildScrollView(
                          child: Column(
                            children: [
                              if (state.items.isEmpty)
                                const Center(child: Text("Your cart is empty"))
                              else ...[
                                ...state.items.map((item) => Padding(
                                  padding: const EdgeInsets.only(bottom: 15),
                                  child: CartItemCard(
                                    productImage: item.product.imagePath,
                                    productName: item.product.name,
                                    productPrice: '\$${item.product.price.toStringAsFixed(2)}',
                                    productQuantity: item.quantity.toString(),
                                    productStatus: item.product.quantity > 0 ? 'In Stock' : 'Out of Stock',
                                    onAdd: () {
                                      context.read<CartBloc>().add(IncreaseProductQuantity(item.product.id));
                                    },
                                    onMinus: () {
                                      context.read<CartBloc>().add(DecreaseProductQuantity(item.product.id));
                                    },
                                    onDelete: () {
                                      context.read<CartBloc>().add(RemoveProductFromCart(item.product.id));
                                    },
                                  ),
                                )),
                              ]
                            ]
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 14),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Order Info',
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w700,
                              height: 20 / 14, // line-height ÷ font-size → 1.5
                              letterSpacing: 0.0,
                            ),
                          ),
                          SizedBox(height: 15),
                          Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'Subtotal',
                                  style: TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w500,
                                    height: 20 / 12, // line-height ÷ font-size → 1.43
                                    letterSpacing: 0.0,
                                  ),
                                ),
                                Text(
                                  '\$${state.totalAmount.toInt()}',
                                  style: TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w500,
                                    height: 20 / 12, // line-height ÷ font-size → 1.43
                                    letterSpacing: 0.0,
                                  ),
                                ),
                              ],
                            ),
                          const SizedBox(height: 15),
                          Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'Shipping',
                                  style: TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w500,
                                    height: 20 / 12, // line-height ÷ font-size → 1.43
                                    letterSpacing: 0.0,
                                  ),
                                ),
                                Text(
                                  '\$${shippingFee.toInt()}',
                                  style: TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w500,
                                    height: 20 / 12, // line-height ÷ font-size → 1.43
                                    letterSpacing: 0.0,
                                  ),
                                ),
                              ],
                            ),
                          const SizedBox(height: 15),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Total',
                                style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w500,
                                  height: 20 / 12, // line-height ÷ font-size → 1.43
                                  letterSpacing: 0.0,
                                ),
                              ),
                              Text(
                                '\$${totalAmount.toInt()}',
                                style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w700,
                                  height: 20 / 14, // line-height ÷ font-size → 1.43
                                  letterSpacing: 0.0,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    )
                  ],
                );
              }
            )
          );
        }
      ),
    );
  }
}