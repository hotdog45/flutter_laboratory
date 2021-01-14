import 'package:json_annotation/json_annotation.dart'; 
  
part 'search_list_model.g.dart';


@JsonSerializable()
  class SearchListModel extends Object {

  @JsonKey(name: 'Searchlist')
  List<Searchlist> searchlist;

  @JsonKey(name: 'pageInfo')
  PageInfo pageInfo;

  SearchListModel(this.searchlist,this.pageInfo,);

  factory SearchListModel.fromJson(Map<String, dynamic> srcJson) => _$SearchListModelFromJson(srcJson);

  Map<String, dynamic> toJson() => _$SearchListModelToJson(this);

}

  
@JsonSerializable()
  class Searchlist extends Object {

  @JsonKey(name: 'skuId')
  String skuId;

  @JsonKey(name: 'itemId')
  String itemId;

  @JsonKey(name: 'skuName')
  String skuName;

  @JsonKey(name: 'skuImg')
  String skuImg;

  @JsonKey(name: 'salePrice')
  String salePrice;

  @JsonKey(name: 'stockNum')
  String stockNum;

  @JsonKey(name: 'saleSpecification')
  String saleSpecification;

  @JsonKey(name: 'saleSpecUnit')
  String saleSpecUnit;

  @JsonKey(name: 'verifySpec')
  String verifySpec;

  @JsonKey(name: 'verifySpecUnit')
  String verifySpecUnit;

  @JsonKey(name: 'saleName')
  String saleName;

  @JsonKey(name: 'saleItemSkuId')
  String saleItemSkuId;

  @JsonKey(name: 'saleUnit')
  String saleUnit;

  @JsonKey(name: 'weightType')
  int weightType;

  Searchlist(this.skuId,this.itemId,this.skuName,this.skuImg,this.salePrice,this.stockNum,this.saleSpecification,this.saleSpecUnit,this.verifySpec,this.verifySpecUnit,this.saleName,this.saleItemSkuId,this.saleUnit,this.weightType,);

  factory Searchlist.fromJson(Map<String, dynamic> srcJson) => _$SearchlistFromJson(srcJson);

  Map<String, dynamic> toJson() => _$SearchlistToJson(this);

}

  
@JsonSerializable()
  class PageInfo extends Object {

  @JsonKey(name: 'page')
  int page;

  @JsonKey(name: 'size')
  int size;

  @JsonKey(name: 'hasNext')
  bool hasNext;

  @JsonKey(name: 'total')
  int total;

  PageInfo(this.page,this.size,this.hasNext,this.total,);

  factory PageInfo.fromJson(Map<String, dynamic> srcJson) => _$PageInfoFromJson(srcJson);

  Map<String, dynamic> toJson() => _$PageInfoToJson(this);

}

  
