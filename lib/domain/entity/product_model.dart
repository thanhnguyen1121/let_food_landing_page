import 'package:json_annotation/json_annotation.dart';

part 'product_model.g.dart';

@JsonSerializable()
class ProductModel {
  String url;
  String name;
  String description;
  double price;
  bool isFavorite;

  ProductModel({
    required this.url,
    required this.name,
    required this.description,
    required this.price,
    required this.isFavorite,
  });

  factory ProductModel.fromJson(Map<String, dynamic> json) =>
      _$ProductModelFromJson(json);

  Map<String, dynamic> toJson() => _$ProductModelToJson(this);
}
