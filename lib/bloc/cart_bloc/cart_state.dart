import 'package:minimart/common/models/cart_items.dart';

class CartState {
  final List<CartItem> items;

  //const CartState({required this.items});

  const CartState({List<CartItem>? items}) : items = items ?? const [];

  factory CartState.initial() => CartState(items: []);

  CartState copyWith({List<CartItem>? items}) {
    return CartState(items: items ?? this.items);
  }

  int get totalItems => items.fold(0, (sum, item) => sum + item.quantity);

  double get totalAmount => items.fold(0, (sum, item) => sum + (item.product.price * item.quantity));
}
