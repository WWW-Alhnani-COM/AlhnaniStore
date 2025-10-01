// lib/providers/cart_provider.dart
import 'package:flutter/foundation.dart';
import '../models/product.dart';
import '../models/cart.dart' as cart_models;

class CartProvider with ChangeNotifier {
  final Map<String, cart_models.CartItem> _items = {};

  Map<String, cart_models.CartItem> get items => {..._items};

  int get itemCount => _items.length;

  int get totalQuantity {
    return _items.values.fold(0, (sum, item) => sum + item.quantity);
  }

  double get totalAmount {
    return _items.values.fold(0.0, (sum, item) => sum + item.total);
  }

  String get formattedTotalAmount => '${totalAmount.toStringAsFixed(2)} ريال';

  void addItem(Product product, [int quantity = 1]) {
    final itemId = '${DateTime.now().millisecondsSinceEpoch}';
    
    if (_items.containsKey(product.id)) {
      // زيادة الكمية إذا المنتج موجود
      _items[product.id]!.quantity += quantity;
    } else {
      // إضافة منتج جديد
      _items[product.id] = cart_models.CartItem(
        id: itemId,
        product: product,
        quantity: quantity,
        price: product.price,
      );
    }
    notifyListeners();
  }

  void removeItem(String productId) {
    _items.remove(productId);
    notifyListeners();
  }

  void updateQuantity(String productId, int quantity) {
    if (quantity <= 0) {
      removeItem(productId);
      return;
    }

    if (_items.containsKey(productId)) {
      _items[productId]!.quantity = quantity;
      notifyListeners();
    }
  }

  void incrementQuantity(String productId) {
    if (_items.containsKey(productId)) {
      _items[productId]!.quantity++;
      notifyListeners();
    }
  }

  void decrementQuantity(String productId) {
    if (_items.containsKey(productId)) {
      if (_items[productId]!.quantity > 1) {
        _items[productId]!.quantity--;
      } else {
        removeItem(productId);
      }
      notifyListeners();
    }
  }

  void clear() {
    _items.clear();
    notifyListeners();
  }

  bool containsProduct(String productId) {
    return _items.containsKey(productId);
  }

  int getProductQuantity(String productId) {
    return _items[productId]?.quantity ?? 0;
  }

  List<cart_models.CartItem> get itemsList {
    return _items.values.toList();
  }
}