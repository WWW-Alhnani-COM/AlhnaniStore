// lib/models/cart.dart
import 'package:alhnani_store/models/product.dart';

class CartItem {
  final String id;
  final Product product;
  int quantity;
  final double price;

  CartItem({
    required this.id,
    required this.product,
    required this.quantity,
    required this.price,
  });

  factory CartItem.fromJson(Map<String, dynamic> json) {
    return CartItem(
      id: json['_id'] ?? json['id'] ?? '',
      product: Product.fromJson(json['product'] ?? {}),
      quantity: json['quantity'] ?? 1,
      price: (json['price'] ?? 0).toDouble(),
    );
  }

  double get total => price * quantity;
  String get formattedTotal => '${total.toStringAsFixed(2)} ريال';
  String get formattedPrice => '${price.toStringAsFixed(2)} ريال';
}