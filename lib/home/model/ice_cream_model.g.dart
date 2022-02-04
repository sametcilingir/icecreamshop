// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ice_cream_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

IceCreamModel _$IceCreamModelFromJson(Map<String, dynamic> json) {
  return IceCreamModel(
    productId: json['productId'] as String?,
    productName: json['productName'] as String?,
    productImage: json['productImage'] as String?,
    productMiniImage: json['productMiniImage'] as String?,
    productDescription: json['productDescription'] as String?,
    productDescriptionImage: json['productDescriptionImage'] as String?,
    productPrice: json['productPrice'] as String?,
    productReviews: json['productReviews'] as String?,
    productRates: json['productRates'] as String?,
    productAmount: json['productAmount'] as String?,
    productCategory: json['productCategory'] as String?,
    productColor: json['productColor'] as String?,
  );
}

Map<String, dynamic> _$IceCreamModelToJson(IceCreamModel instance) =>
    <String, dynamic>{
      'productId': instance.productId,
      'productName': instance.productName,
      'productImage': instance.productImage,
      'productMiniImage': instance.productMiniImage,
      'productDescription': instance.productDescription,
      'productDescriptionImage': instance.productDescriptionImage,
      'productPrice': instance.productPrice,
      'productReviews': instance.productReviews,
      'productRates': instance.productRates,
      'productAmount': instance.productAmount,
      'productCategory': instance.productCategory,
      'productColor': instance.productColor,
    };
