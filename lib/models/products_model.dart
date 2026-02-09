class AmazonProducts {
  final String status;
  final String requestId;
  final Parameters parameters;
  final Data data;

  AmazonProducts({
    required this.status,
    required this.requestId,
    required this.parameters,
    required this.data,
  });

  factory AmazonProducts.fromJson(Map<String, dynamic> json) {
    return AmazonProducts(
      status: json['status'] ?? '',
      requestId: json['request_id'] ?? '',
      parameters: Parameters.fromJson(json['parameters'] ?? {}),
      data: Data.fromJson(json['data'] ?? {}),
    );
  }
}

// ------------------------------------------------------------

class Parameters {
  final String categoryId;
  final String country;
  final String sortBy;
  final int page;
  final bool isPrime;
  final String language;

  Parameters({
    required this.categoryId,
    required this.country,
    required this.sortBy,
    required this.page,
    required this.isPrime,
    required this.language,
  });

  factory Parameters.fromJson(Map<String, dynamic> json) {
    return Parameters(
      categoryId: json['category_id'] ?? '',
      country: json['country'] ?? '',
      sortBy: json['sort_by'] ?? '',
      page: json['page'] ?? 0,
      isPrime: json['is_prime'] ?? false,
      language: json['language'] ?? '',
    );
  }
}

// ------------------------------------------------------------

class Data {
  final int totalProducts;
  final String country;
  final String domain;
  final List<Product> products;

  Data({
    required this.totalProducts,
    required this.country,
    required this.domain,
    required this.products,
  });

  factory Data.fromJson(Map<String, dynamic> json) {
    return Data(
      totalProducts: json['total_products'] ?? 0,
      country: json['country'] ?? '',
      domain: json['domain'] ?? '',
      products: (json['products'] as List<dynamic>? ?? [])
          .map((e) => Product.fromJson(e))
          .toList(),
    );
  }
}

// ------------------------------------------------------------

class Product {
  final String asin;
  final String productTitle;
  final String productPrice;
  final String? productOriginalPrice;
  final String currency;
  final String productStarRating;
  final int productNumRatings;
  final String productUrl;
  final String productPhoto;
  final int productNumOffers;
  final String productMinimumOfferPrice;
  final bool isBestSeller;
  final bool isAmazonChoice;
  final bool isPrime;
  final bool climatePledgeFriendly;
  final String? salesVolume;
  final String? delivery;
  final bool hasVariations;
  final String? unitPrice;
  final int? unitCount;
  final String? productBadge;

  Product({
    required this.asin,
    required this.productTitle,
    required this.productPrice,
    this.productOriginalPrice,
    required this.currency,
    required this.productStarRating,
    required this.productNumRatings,
    required this.productUrl,
    required this.productPhoto,
    required this.productNumOffers,
    required this.productMinimumOfferPrice,
    required this.isBestSeller,
    required this.isAmazonChoice,
    required this.isPrime,
    required this.climatePledgeFriendly,
    this.salesVolume,
    this.delivery,
    required this.hasVariations,
    this.unitPrice,
    this.unitCount,
    this.productBadge,
  });

  factory Product.fromJson(Map<String, dynamic> json) {
    return Product(
      asin: json['asin'] ?? '',
      productTitle: json['product_title'] ?? '',
      productPrice: json['product_price'] ?? '',
      productOriginalPrice: json['product_original_price'],
      currency: json['currency'] ?? '',
      productStarRating: json['product_star_rating'] ?? '',
      productNumRatings: json['product_num_ratings'] ?? 0,
      productUrl: json['product_url'] ?? '',
      productPhoto: json['product_photo'] ?? '',
      productNumOffers: json['product_num_offers'] ?? 0,
      productMinimumOfferPrice: json['product_minimum_offer_price'] ?? '',
      isBestSeller: json['is_best_seller'] ?? false,
      isAmazonChoice: json['is_amazon_choice'] ?? false,
      isPrime: json['is_prime'] ?? false,
      climatePledgeFriendly: json['climate_pledge_friendly'] ?? false,
      salesVolume: json['sales_volume'],
      delivery: json['delivery'],
      hasVariations: json['has_variations'] ?? false,
      unitPrice: json['unit_price'],
      unitCount: json['unit_count'],
      productBadge: json['product_badge'],
    );
  }
}
