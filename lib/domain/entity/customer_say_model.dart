import 'package:json_annotation/json_annotation.dart';

part 'customer_say_model.g.dart';

@JsonSerializable()
class CustomerSayModel {
  String customerAvatarUrl;
  String customerName;
  String customerComment;
  double customerRate;

  CustomerSayModel({
    required this.customerAvatarUrl,
    required this.customerName,
    required this.customerComment,
    required this.customerRate,
  });

  factory CustomerSayModel.fromJson(Map<String, dynamic> json) =>
      _$CustomerSayModelFromJson(json);

  Map<String, dynamic> toJson() => _$CustomerSayModelToJson(this);
}
