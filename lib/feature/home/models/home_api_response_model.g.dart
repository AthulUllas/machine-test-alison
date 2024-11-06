// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_api_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

HomeApiResponseModel _$HomeApiResponseModelFromJson(
        Map<String, dynamic> json) =>
    HomeApiResponseModel(
      success: (json['success'] as num?)?.toInt(),
      message: json['message'] as String?,
      banner1: (json['banner1'] as List<dynamic>?)
          ?.map((e) => BannerModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      banner2: (json['banner2'] as List<dynamic>?)
          ?.map((e) => BannerModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      banner3: (json['banner3'] as List<dynamic>?)
          ?.map((e) => BannerModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      banner4: (json['banner4'] as List<dynamic>?)
          ?.map((e) => BannerModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      banner5: json['banner5'] as List<dynamic>?,
      recentviews: (json['recentviews'] as List<dynamic>?)
          ?.map((e) => BestSeller.fromJson(e as Map<String, dynamic>))
          .toList(),
      ourProducts: (json['our_products'] as List<dynamic>?)
          ?.map((e) => BestSeller.fromJson(e as Map<String, dynamic>))
          .toList(),
      suggestedProducts: (json['suggested_products'] as List<dynamic>?)
          ?.map((e) => BestSeller.fromJson(e as Map<String, dynamic>))
          .toList(),
      bestSeller: (json['best_seller'] as List<dynamic>?)
          ?.map((e) => BestSeller.fromJson(e as Map<String, dynamic>))
          .toList(),
      flashSail: (json['flash_sail'] as List<dynamic>?)
          ?.map((e) => BestSeller.fromJson(e as Map<String, dynamic>))
          .toList(),
      newarrivals: json['newarrivals'] as List<dynamic>?,
      categories: (json['categories'] as List<dynamic>?)
          ?.map((e) => Ory.fromJson(e as Map<String, dynamic>))
          .toList(),
      topAccessories: (json['top_accessories'] as List<dynamic>?)
          ?.map((e) => Ory.fromJson(e as Map<String, dynamic>))
          .toList(),
      featuredbrands: (json['featuredbrands'] as List<dynamic>?)
          ?.map((e) => Featuredbrand.fromJson(e as Map<String, dynamic>))
          .toList(),
      cartcount: (json['cartcount'] as num?)?.toInt(),
      wishlistcount: (json['wishlistcount'] as num?)?.toInt(),
      currency: json['currency'] == null
          ? null
          : Currency.fromJson(json['currency'] as Map<String, dynamic>),
      notificationCount: (json['notification_count'] as num?)?.toInt(),
    );

Map<String, dynamic> _$HomeApiResponseModelToJson(
        HomeApiResponseModel instance) =>
    <String, dynamic>{
      'success': instance.success,
      'message': instance.message,
      'banner1': instance.banner1,
      'banner2': instance.banner2,
      'banner3': instance.banner3,
      'banner4': instance.banner4,
      'banner5': instance.banner5,
      'recentviews': instance.recentviews,
      'our_products': instance.ourProducts,
      'suggested_products': instance.suggestedProducts,
      'best_seller': instance.bestSeller,
      'flash_sail': instance.flashSail,
      'newarrivals': instance.newarrivals,
      'categories': instance.categories,
      'top_accessories': instance.topAccessories,
      'featuredbrands': instance.featuredbrands,
      'cartcount': instance.cartcount,
      'wishlistcount': instance.wishlistcount,
      'currency': instance.currency,
      'notification_count': instance.notificationCount,
    };

BannerModel _$BannerModelFromJson(Map<String, dynamic> json) => BannerModel(
      id: (json['id'] as num?)?.toInt(),
      linkType: (json['link_type'] as num?)?.toInt(),
      linkValue: json['link_value'] as String?,
      image: json['image'] as String?,
      title: json['title'] as String?,
      subTitle: json['sub_title'] as String?,
      logo: json['logo'],
    );

Map<String, dynamic> _$BannerModelToJson(BannerModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'link_type': instance.linkType,
      'link_value': instance.linkValue,
      'image': instance.image,
      'title': instance.title,
      'sub_title': instance.subTitle,
      'logo': instance.logo,
    };

BestSeller _$BestSellerFromJson(Map<String, dynamic> json) => BestSeller(
      productId: (json['productId'] as num?)?.toInt(),
      slug: json['slug'] as String?,
      code: json['code'] as String?,
      homeImg: json['home_img'] as String?,
      name: json['name'] as String?,
      isGender: (json['is_gender'] as num?)?.toInt(),
      store: json['store'] as String?,
      manufacturer: json['manufacturer'] as String?,
      oldprice: json['oldprice'] as String?,
      price: json['price'] as String?,
      image: json['image'] as String?,
      cart: (json['cart'] as num?)?.toInt(),
      wishlist: (json['wishlist'] as num?)?.toInt(),
    );

Map<String, dynamic> _$BestSellerToJson(BestSeller instance) =>
    <String, dynamic>{
      'productId': instance.productId,
      'slug': instance.slug,
      'code': instance.code,
      'home_img': instance.homeImg,
      'name': instance.name,
      'is_gender': instance.isGender,
      'store': instance.store,
      'manufacturer': instance.manufacturer,
      'oldprice': instance.oldprice,
      'price': instance.price,
      'image': instance.image,
      'cart': instance.cart,
      'wishlist': instance.wishlist,
    };

Ory _$OryFromJson(Map<String, dynamic> json) => Ory(
      category: json['category'] == null
          ? null
          : Featuredbrand.fromJson(json['category'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$OryToJson(Ory instance) => <String, dynamic>{
      'category': instance.category,
    };

Featuredbrand _$FeaturedbrandFromJson(Map<String, dynamic> json) =>
    Featuredbrand(
      id: (json['id'] as num?)?.toInt(),
      slug: json['slug'] as String?,
      image: json['image'] as String?,
      name: json['name'] as String?,
      description: json['description'] as String?,
    );

Map<String, dynamic> _$FeaturedbrandToJson(Featuredbrand instance) =>
    <String, dynamic>{
      'id': instance.id,
      'slug': instance.slug,
      'image': instance.image,
      'name': instance.name,
      'description': instance.description,
    };

Currency _$CurrencyFromJson(Map<String, dynamic> json) => Currency(
      name: json['name'] as String?,
      code: json['code'] as String?,
      symbolLeft: json['symbol_left'] as String?,
      symbolRight: json['symbol_right'] as String?,
      value: json['value'] as String?,
      status: (json['status'] as num?)?.toInt(),
    );

Map<String, dynamic> _$CurrencyToJson(Currency instance) => <String, dynamic>{
      'name': instance.name,
      'code': instance.code,
      'symbol_left': instance.symbolLeft,
      'symbol_right': instance.symbolRight,
      'value': instance.value,
      'status': instance.status,
    };
