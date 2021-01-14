// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'search_list_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SearchListModel _$SearchListModelFromJson(Map<String, dynamic> json) {
  return SearchListModel(
    (json['Searchlist'] as List)
        ?.map((e) =>
            e == null ? null : Searchlist.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    json['pageInfo'] == null
        ? null
        : PageInfo.fromJson(json['pageInfo'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$SearchListModelToJson(SearchListModel instance) =>
    <String, dynamic>{
      'Searchlist': instance.searchlist,
      'pageInfo': instance.pageInfo,
    };

Searchlist _$SearchlistFromJson(Map<String, dynamic> json) {
  return Searchlist(
    json['skuId'] as String,
    json['itemId'] as String,
    json['skuName'] as String,
    json['skuImg'] as String,
    json['salePrice'] as String,
    json['stockNum'] as String,
    json['saleSpecification'] as String,
    json['saleSpecUnit'] as String,
    json['verifySpec'] as String,
    json['verifySpecUnit'] as String,
    json['saleName'] as String,
    json['saleItemSkuId'] as String,
    json['saleUnit'] as String,
    json['weightType'] as int,
  );
}

Map<String, dynamic> _$SearchlistToJson(Searchlist instance) =>
    <String, dynamic>{
      'skuId': instance.skuId,
      'itemId': instance.itemId,
      'skuName': instance.skuName,
      'skuImg': instance.skuImg,
      'salePrice': instance.salePrice,
      'stockNum': instance.stockNum,
      'saleSpecification': instance.saleSpecification,
      'saleSpecUnit': instance.saleSpecUnit,
      'verifySpec': instance.verifySpec,
      'verifySpecUnit': instance.verifySpecUnit,
      'saleName': instance.saleName,
      'saleItemSkuId': instance.saleItemSkuId,
      'saleUnit': instance.saleUnit,
      'weightType': instance.weightType,
    };

PageInfo _$PageInfoFromJson(Map<String, dynamic> json) {
  return PageInfo(
    json['page'] as int,
    json['size'] as int,
    json['hasNext'] as bool,
    json['total'] as int,
  );
}

Map<String, dynamic> _$PageInfoToJson(PageInfo instance) => <String, dynamic>{
      'page': instance.page,
      'size': instance.size,
      'hasNext': instance.hasNext,
      'total': instance.total,
    };
