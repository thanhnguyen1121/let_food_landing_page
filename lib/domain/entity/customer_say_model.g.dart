// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'customer_say_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CustomerSayModel _$CustomerSayModelFromJson(Map<String, dynamic> json) =>
    CustomerSayModel(
      customerAvatarUrl: json['customerAvatarUrl'] as String,
      customerName: json['customerName'] as String,
      customerComment: json['customerComment'] as String,
      customerRate: (json['customerRate'] as num).toDouble(),
    );

Map<String, dynamic> _$CustomerSayModelToJson(CustomerSayModel instance) =>
    <String, dynamic>{
      'customerAvatarUrl': instance.customerAvatarUrl,
      'customerName': instance.customerName,
      'customerComment': instance.customerComment,
      'customerRate': instance.customerRate,
    };
