// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'shop_cart_goods_list_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ShopCartGoodsListModel _$ShopCartGoodsListModelFromJson(
    Map<String, dynamic> json) {
  return ShopCartGoodsListModel(
    (json['items'] as List)
        ?.map((e) => e == null
            ? null
            : ShopCartItems.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    (json['unavailableItems'] as List)
        ?.map((e) => e == null
            ? null
            : ShopCartItems.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    json['totalPrice'] as String,
    json['activityTag'] as int,
    json['activityItemCount'] as int,
  );
}

Map<String, dynamic> _$ShopCartGoodsListModelToJson(
        ShopCartGoodsListModel instance) =>
    <String, dynamic>{
      'items': instance.shopCartItems,
      'unavailableItems': instance.unavailableItems,
      'totalPrice': instance.totalPrice,
      'activityTag': instance.activityTag,
      'activityItemCount': instance.activityItemCount,
    };

ShopCartItems _$ShopCartItemsFromJson(Map<String, dynamic> json) {
  return ShopCartItems(
    json['cartId'] as String,
    json['performanceChannel'] as int,
    json['quantity'] as int,
    json['selected'] as int,
    json['skuInfo'] == null
        ? null
        : SkuInfo.fromJson(json['skuInfo'] as Map<String, dynamic>),
    json['effective'] as bool,
    json['unavailableReason'] as int,
  );
}

Map<String, dynamic> _$ShopCartItemsToJson(ShopCartItems instance) =>
    <String, dynamic>{
      'cartId': instance.cartId,
      'performanceChannel': instance.performanceChannel,
      'quantity': instance.quantity,
      'selected': instance.selected,
      'skuInfo': instance.skuInfo,
      'effective': instance.effective,
      'unavailableReason': instance.unavailableReason,
    };

SkuInfo _$SkuInfoFromJson(Map<String, dynamic> json) {
  return SkuInfo(
    json['saleItemSkuId'] as String,
    json['skuImg'] as String,
    json['salePrice'] as String,
    json['stockNum'] as String,
    json['saleSpecUnit'] as String,
    json['verifySpec'] as String,
    json['verifySpecUnit'] as String,
    json['saleName'] as String,
    json['weightType'] as int,
    json['saleUnit'] as String,
    json['activityTag'] as int,
  );
}

Map<String, dynamic> _$SkuInfoToJson(SkuInfo instance) => <String, dynamic>{
      'saleItemSkuId': instance.saleItemSkuId,
      'skuImg': instance.skuImg,
      'salePrice': instance.salePrice,
      'stockNum': instance.stockNum,
      'saleSpecUnit': instance.saleSpecUnit,
      'verifySpec': instance.verifySpec,
      'verifySpecUnit': instance.verifySpecUnit,
      'saleName': instance.saleName,
      'weightType': instance.weightType,
      'saleUnit': instance.saleUnit,
      'activityTag': instance.activityTag,
    };
