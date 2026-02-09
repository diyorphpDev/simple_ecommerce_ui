import 'dart:convert';
import 'package:exam_proj/models/products_model.dart';
import 'package:http/http.dart' as http;

class ApiDetails {
  final String apiUrl =
      "https://real-time-amazon-data.p.rapidapi.com/products-by-category?category_id=281407&page=1&country=US&sort_by=RELEVANCE&product_condition=ALL&is_prime=false&deals_and_discounts=NONE";
  final String apiUrlProduct =
      "https://real-time-amazon-data.p.rapidapi.com/product-details";
  final String refHeader = "real-time-amazon-data.p.rapidapi.com";
  final String keyHeader = "46263da222msh084356e426b544dp17a1e3jsna4924209bd49";
}

class ApiService {
  Future<AmazonProducts> apiAllProducts() async {
    try {
      final response = await http.get(Uri.parse(ApiDetails().apiUrl),headers: {"x-rapidapi-host":ApiDetails().refHeader,"x-rapidapi-key":ApiDetails().keyHeader});

    if (response.statusCode >= 200 && response.statusCode < 300) {
      print(response.body);
      return AmazonProducts.fromJson(jsonDecode(response.body));
    } else {
      throw Exception('Failed to load products: ${response.statusCode}');
    }

    } catch (e) {
      throw Exception(e);
    }
  }
  Future<AmazonProducts> apiDetailProduct({required String product_asin}) async {
    try {
      final response = await http.get(Uri.parse(ApiDetails().apiUrlProduct+"?asin=$product_asin&country=US"),headers: {"x-rapidapi-host":ApiDetails().refHeader,"x-rapidapi-key":ApiDetails().keyHeader});

    if (response.statusCode >= 200 && response.statusCode < 300) {
      print(response.body);
      return AmazonProducts.fromJson(jsonDecode(response.body));
    } else {
      throw Exception('Failed to load products: ${response.statusCode}');
    }

    } catch (e) {
      throw Exception(e);
    }
  }
}
