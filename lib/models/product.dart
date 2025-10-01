// lib/models/product.dart
class Product {
  final String id;
  final String name;
  final String description;
  final double price;
  final double? originalPrice;
  final List<String> images;
  final String category;
  final int stock;
  final Rating ratings;
  final List<String> features;
  final List<String> tags;
  final bool isActive;

  Product({
    required this.id,
    required this.name,
    required this.description,
    required this.price,
    this.originalPrice,
    required this.images,
    required this.category,
    required this.stock,
    required this.ratings,
    required this.features,
    required this.tags,
    required this.isActive,
  });

  factory Product.fromJson(Map<String, dynamic> json) {
    return Product(
      id: json['_id'] ?? json['id'] ?? '',
      name: json['name'] ?? '',
      description: json['description'] ?? '',
      price: (json['price'] ?? 0).toDouble(),
      originalPrice: json['originalPrice'] != null 
          ? (json['originalPrice'] as num).toDouble() 
          : null,
      images: List<String>.from(json['images'] ?? []),
      category: json['category'] ?? 'other',
      stock: json['stock'] ?? 0,
      ratings: Rating.fromJson(json['ratings'] ?? {}),
      features: List<String>.from(json['features'] ?? []),
      tags: List<String>.from(json['tags'] ?? []),
      isActive: json['isActive'] ?? true,
    );
  }

  bool get hasDiscount => originalPrice != null && originalPrice! > price;
  
  double get discountPercentage {
    if (!hasDiscount) return 0;
    return ((originalPrice! - price) / originalPrice!) * 100;
  }

  String get formattedPrice => '${price.toStringAsFixed(2)} ريال';
  
  String? get formattedOriginalPrice {
    return hasDiscount ? '${originalPrice!.toStringAsFixed(2)} ريال' : null;
  }
}

class Rating {
  final double average;
  final int count;

  Rating({
    required this.average,
    required this.count,
  });

  factory Rating.fromJson(Map<String, dynamic> json) {
    return Rating(
      average: (json['average'] ?? 0).toDouble(),
      count: json['count'] ?? 0,
    );
  }

  String get formattedAverage => average.toStringAsFixed(1);
}