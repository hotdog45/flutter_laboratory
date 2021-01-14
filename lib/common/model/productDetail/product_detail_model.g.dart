// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_detail_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ProductDetailModel _$ProductDetailModelFromJson(Map<String, dynamic> json) {
  return ProductDetailModel(
    json['itemDetails'] == null
        ? null
        : ItemDetails.fromJson(json['itemDetails'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$ProductDetailModelToJson(ProductDetailModel instance) =>
    <String, dynamic>{
      'itemDetails': instance.itemDetails,
    };

ItemDetails _$ItemDetailsFromJson(Map<String, dynamic> json) {
  return ItemDetails(
    json['goodsId'] as String,
    json['isRefund'] as bool,
    json['itemId'] as String,
    json['itemName'] as String,
    json['saleName'] as String,
    json['salePrice'] as String,
    json['saleSpecUnit'] as String,
    json['saleSpecification'] as String,
    json['saleUnit'] as String,
    json['skuCover'] as String,
    (json['skuImgs'] as List)?.map((e) => e as String)?.toList(),
    json['skuName'] as String,
    json['status'] as int,
    json['stockNum'] as int,
    json['strSuggestedPrice'] as String,
    json['supportReturn'] as bool,
    json['verifySpec'] as String,
    json['verifySpecUnit'] as String,
    json['weightType'] as int,
    (json['descriptions'] as List)
        ?.map((e) =>
            e == null ? null : Descriptions.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    json['skuId'] as String,
    json['itemProperty'] == null
        ? null
        : ItemProperty.fromJson(json['itemProperty'] as Map<String, dynamic>),
    json['originPrice'] as String,
    json['limitFlag'] as int,
    json['activityTag'] as int,
    json['startTime'] as String,
    json['endTime'] as String,
    json['limitNum'] as int,
    json['serverTime'] as String,
    json['availableBuyNum'] as int,
  );
}

Map<String, dynamic> _$ItemDetailsToJson(ItemDetails instance) =>
    <String, dynamic>{
      'goodsId': instance.goodsId,
      'isRefund': instance.isRefund,
      'itemId': instance.itemId,
      'itemName': instance.itemName,
      'saleName': instance.saleName,
      'salePrice': instance.salePrice,
      'saleSpecUnit': instance.saleSpecUnit,
      'saleSpecification': instance.saleSpecification,
      'saleUnit': instance.saleUnit,
      'skuCover': instance.skuCover,
      'skuImgs': instance.skuImgs,
      'skuName': instance.skuName,
      'status': instance.status,
      'stockNum': instance.stockNum,
      'strSuggestedPrice': instance.strSuggestedPrice,
      'supportReturn': instance.supportReturn,
      'verifySpec': instance.verifySpec,
      'verifySpecUnit': instance.verifySpecUnit,
      'weightType': instance.weightType,
      'descriptions': instance.descriptions,
      'skuId': instance.skuId,
      'itemProperty': instance.itemProperty,
      'originPrice': instance.originPrice,
      'limitFlag': instance.limitFlag,
      'activityTag': instance.activityTag,
      'startTime': instance.startTime,
      'endTime': instance.endTime,
      'limitNum': instance.limitNum,
      'serverTime': instance.serverTime,
      'availableBuyNum': instance.availableBuyNum,
    };

Descriptions _$DescriptionsFromJson(Map<String, dynamic> json) {
  return Descriptions(
    json['type'] as int,
    json['value'] as String,
  );
}

Map<String, dynamic> _$DescriptionsToJson(Descriptions instance) =>
    <String, dynamic>{
      'type': instance.type,
      'value': instance.value,
    };

ItemProperty _$ItemPropertyFromJson(Map<String, dynamic> json) {
  return ItemProperty(
    json['brand'] as String,
    json['productionDate'] as String,
    json['expirationDate'] as String,
  );
}

Map<String, dynamic> _$ItemPropertyToJson(ItemProperty instance) =>
    <String, dynamic>{
      'brand': instance.brand,
      'productionDate': instance.productionDate,
      'expirationDate': instance.expirationDate,
    };
