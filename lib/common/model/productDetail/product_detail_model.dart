import 'package:json_annotation/json_annotation.dart';

part 'product_detail_model.g.dart';

@JsonSerializable()
class ProductDetailModel extends Object {
  @JsonKey(name: 'itemDetails')
  ItemDetails itemDetails;

  ProductDetailModel(
    this.itemDetails,
  );

  factory ProductDetailModel.fromJson(Map<String, dynamic> srcJson) =>
      _$ProductDetailModelFromJson(srcJson);

  Map<String, dynamic> toJson() => _$ProductDetailModelToJson(this);
}

@JsonSerializable()
class ItemDetails extends Object {
  @JsonKey(name: 'goodsId')
  String goodsId;

  @JsonKey(name: 'isRefund')
  bool isRefund;

  @JsonKey(name: 'itemId')
  String itemId;

  @JsonKey(name: 'itemName')
  String itemName;


  @JsonKey(name: 'saleName')
  String saleName;

  @JsonKey(name: 'salePrice')
  String salePrice;

  @JsonKey(name: 'saleSpecUnit')
  String saleSpecUnit;

  @JsonKey(name: 'saleSpecification')
  String saleSpecification;

  @JsonKey(name: 'saleUnit')
  String saleUnit;

  @JsonKey(name: 'skuCover')
  String skuCover;

  @JsonKey(name: 'skuImgs')
  List<String> skuImgs;

  @JsonKey(name: 'skuName')
  String skuName;

  @JsonKey(name: 'status')
  int status;

  @JsonKey(name: 'stockNum')
  int stockNum;

  @JsonKey(name: 'strSuggestedPrice')
  String strSuggestedPrice;

  @JsonKey(name: 'supportReturn')
  bool supportReturn;

  @JsonKey(name: 'verifySpec')
  String verifySpec;

  @JsonKey(name: 'verifySpecUnit')
  String verifySpecUnit;

  @JsonKey(name: 'weightType')
  int weightType;

  @JsonKey(name: 'descriptions')
  List<Descriptions> descriptions;

  @JsonKey(name: 'skuId')
  String skuId;

  @JsonKey(name: 'itemProperty')
  ItemProperty itemProperty;

  @JsonKey(name: 'originPrice')
  String originPrice;

  @JsonKey(name: 'limitFlag')
  int limitFlag;

  @JsonKey(name: 'activityTag')
  int activityTag;

  @JsonKey(name: 'startTime')
  String startTime;

  @JsonKey(name: 'endTime')
  String endTime;

  @JsonKey(name: 'limitNum')
  int limitNum;

  @JsonKey(name: 'serverTime')
  String serverTime;


  @JsonKey(name: 'availableBuyNum')
  int availableBuyNum;


  ItemDetails(
      this.goodsId,
      this.isRefund,
      this.itemId,
      this.itemName,
      this.saleName,
      this.salePrice,
      this.saleSpecUnit,
      this.saleSpecification,
      this.saleUnit,
      this.skuCover,
      this.skuImgs,
      this.skuName,
      this.status,
      this.stockNum,
      this.strSuggestedPrice,
      this.supportReturn,
      this.verifySpec,
      this.verifySpecUnit,
      this.weightType,
      this.descriptions,
      this.skuId,
      this.itemProperty,
      this.originPrice,
      this.limitFlag,
      this.activityTag,
      this.startTime,
      this.endTime,
      this.limitNum,
      this.serverTime,
      this.availableBuyNum);

  factory ItemDetails.fromJson(Map<String, dynamic> srcJson) =>
      _$ItemDetailsFromJson(srcJson);

  Map<String, dynamic> toJson() => _$ItemDetailsToJson(this);
}

@JsonSerializable()
class Descriptions extends Object {
  @JsonKey(name: 'type')
  int type;

  @JsonKey(name: 'value')
  String value;

  Descriptions(
    this.type,
    this.value,
  );

  factory Descriptions.fromJson(Map<String, dynamic> srcJson) =>
      _$DescriptionsFromJson(srcJson);

  Map<String, dynamic> toJson() => _$DescriptionsToJson(this);
}

@JsonSerializable()
class ItemProperty extends Object {
  @JsonKey(name: 'brand')
  String brand;

  @JsonKey(name: 'productionDate')
  String productionDate;

  @JsonKey(name: 'expirationDate')
  String expirationDate;

  ItemProperty(
    this.brand,
    this.productionDate,
    this.expirationDate,
  );

  factory ItemProperty.fromJson(Map<String, dynamic> srcJson) =>
      _$ItemPropertyFromJson(srcJson);

  Map<String, dynamic> toJson() => _$ItemPropertyToJson(this);
}
