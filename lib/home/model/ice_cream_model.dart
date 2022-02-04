import 'package:json_annotation/json_annotation.dart';

part 'ice_cream_model.g.dart';

@JsonSerializable()
class IceCreamModel {
  String? productId;
  String? productName;
  String? productImage;
  String? productMiniImage;
  String? productDescription;
  String? productDescriptionImage;
  String? productPrice;
  String? productReviews;
  String? productRates;
  String? productAmount;
  String? productCategory;
  String? productColor;
  
  IceCreamModel({
    this.productId,
    this.productName,
    this.productImage,
    this.productMiniImage,
    this.productDescription,
    this.productDescriptionImage,
    this.productPrice,
    this.productReviews,
    this.productRates,
    this.productAmount,
    this.productCategory,
    this.productColor,
  });

  factory IceCreamModel.fromJson(Map<String, dynamic>? json) =>
      _$IceCreamModelFromJson(json!);

  Map<String, dynamic> toJson() {
    return _$IceCreamModelToJson(this);
  }
}
