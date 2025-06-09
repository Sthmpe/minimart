import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:minimart/bloc/cart_bloc/cart_event.dart';
import 'package:minimart/bloc/cart_bloc/cart_state.dart';
import 'package:minimart/common/models/cart_items.dart';

class CartBloc extends Bloc<CartEvent, CartState> {
  CartBloc() : super(CartState.initial()) {
    on<AddProductToCart>(_onAddProduct);
    on<IncreaseProductQuantity>(_onIncreaseQuantity);
    on<DecreaseProductQuantity>(_onDecreaseQuantity);
    on<RemoveProductFromCart>(_onRemoveProduct);
    on<ClearCart>(_onClearCart);
  }

  void _onAddProduct(AddProductToCart event, Emitter<CartState> emit) {
    final items = [...state.items];
    final index = items.indexWhere((item) => item.product.id == event.product.id);

    if (index >= 0) {
      final updatedItem = items[index]
          .copyWith(quantity: items[index].quantity + 1);
      items[index] = updatedItem;
    } else {
      items.add(CartItem(product: event.product, quantity: 1));
    }

    emit(state.copyWith(items: items));
  }

  void _onIncreaseQuantity(IncreaseProductQuantity event, Emitter<CartState> emit) {
    final items = [...state.items];
    final index = items.indexWhere((item) => item.product.id == event.productId);

    if (index >= 0) {
      final updatedItem = items[index].copyWith(quantity: items[index].quantity + 1);
      items[index] = updatedItem;
      emit(state.copyWith(items: items));
    }
  }

  void _onDecreaseQuantity(DecreaseProductQuantity event, Emitter<CartState> emit) {
    final items = [...state.items];
    final index = items.indexWhere((item) => item.product.id == event.productId);

    if (index >= 0 && items[index].quantity > 1) {
      final updatedItem = items[index].copyWith(quantity: items[index].quantity - 1);
      items[index] = updatedItem;
    } else if (index >= 0) {
      items.removeAt(index);
    }

    emit(state.copyWith(items: items));
  }

  void _onRemoveProduct(RemoveProductFromCart event, Emitter<CartState> emit) {
    final items = state.items.where((item) => item.product.id != event.productId).toList();
    emit(state.copyWith(items: items));
  }

  void _onClearCart(ClearCart event, Emitter<CartState> emit) {
    emit(CartState.initial());
  }
}
