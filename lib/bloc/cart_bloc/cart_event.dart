import 'package:minimart/common/models/product_model.dart';

abstract class CartEvent {}

class AddProductToCart extends CartEvent {
  final ProductModel product;

  AddProductToCart(this.product);
}

class IncreaseProductQuantity extends CartEvent {
  final String productId;

  IncreaseProductQuantity(this.productId);
}

class DecreaseProductQuantity extends CartEvent {
  final String productId;

  DecreaseProductQuantity(this.productId);
}

class RemoveProductFromCart extends CartEvent {
  final String productId;

  RemoveProductFromCart(this.productId);
}

class ClearCart extends CartEvent {}
