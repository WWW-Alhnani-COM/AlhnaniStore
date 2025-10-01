// lib/services/api_service.dart
import 'dart:convert';
import 'package:http/http.dart' as http;
import '../models/product.dart';

class ApiService {
  static const String baseUrl = 'http://192.168.8.10:5000/api';// تغيير ليرتبط مع الـBackend
  static const Duration timeout = Duration(seconds: 30);

  final http.Client client;

  ApiService({http.Client? client}) : client = client ?? http.Client();

  // جلب جميع المنتجات
 Future<List<Product>> getProducts({
  String? category,
  int page = 1,
  int limit = 10,
}) async {
  try {
    print('🔄 جاري جلب المنتجات من: $baseUrl/products');
    
    final Map<String, String> queryParams = {
      'page': page.toString(),
      'limit': limit.toString(),
    };

    if (category != null && category != 'all') {
      queryParams['category'] = category;
    }

    final uri = Uri.parse('$baseUrl/products').replace(
      queryParameters: queryParams,
    );

    print('📍 الرابط: $uri');
    
    final response = await client.get(uri).timeout(timeout);
    
    print('📡 حالة الاستجابة: ${response.statusCode}');
    
    if (response.statusCode == 200) {
      final data = json.decode(response.body);
      print('📦 عدد المنتجات: ${data['data']?.length ?? 0}');
      
      if (data['success'] == true) {
        final List<dynamic> productsJson = data['data'];
        return productsJson.map((json) => Product.fromJson(json)).toList();
      } else {
        throw Exception(data['message'] ?? 'فشل في تحميل المنتجات');
      }
    } else {
      print('❌ خطأ في الخادم: ${response.statusCode}');
      throw Exception('خطأ في الخادم: ${response.statusCode}');
    }
  } catch (e) {
    print('❌ فشل في جلب المنتجات: $e');
    throw Exception('فشل في جلب المنتجات: $e');
  }
}

  // جلب منتج محدد
  Future<Product> getProduct(String id) async {
    try {
      final response = await client
          .get(Uri.parse('$baseUrl/products/$id'))
          .timeout(timeout);

      if (response.statusCode == 200) {
        final data = json.decode(response.body);
        if (data['success'] == true) {
          return Product.fromJson(data['data']);
        } else {
          throw Exception(data['message'] ?? 'فشل في تحميل المنتج');
        }
      } else if (response.statusCode == 404) {
        throw Exception('المنتج غير موجود');
      } else {
        throw Exception('خطأ في الخادم: ${response.statusCode}');
      }
    } catch (e) {
      throw Exception('فشل في جلب المنتج: $e');
    }
  }


  // جلب المنتجات المميزة
  Future<List<Product>> getFeaturedProducts() async {
    try {
      final response = await client
          .get(Uri.parse('$baseUrl/products/featured'))
          .timeout(timeout);

      if (response.statusCode == 200) {
        final data = json.decode(response.body);
        if (data['success'] == true) {
          final List<dynamic> productsJson = data['data'];
          return productsJson.map((json) => Product.fromJson(json)).toList();
        } else {
          throw Exception(data['message'] ?? 'فشل في تحميل المنتجات المميزة');
        }
      } else {
        throw Exception('خطأ في الخادم: ${response.statusCode}');
      }
    } catch (e) {
      throw Exception('فشل في جلب المنتجات المميزة: $e');
    }
  }

  // فحص حالة الخادم
  Future<bool> checkHealth() async {
    try {
      final response = await client
          .get(Uri.parse('$baseUrl/health'))
          .timeout(const Duration(seconds: 5));
      return response.statusCode == 200;
    } catch (e) {
      return false;
    }
  }

  void dispose() {
    client.close();
  }
}