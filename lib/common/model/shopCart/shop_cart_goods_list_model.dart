import 'package:json_annotation/json_annotation.dart';

part 'shop_cart_goods_list_model.g.dart';


@JsonSerializable()
class ShopCartGoodsListModel extends Object {

  @JsonKey(name: 'items')
  List<ShopCartItems> shopCartItems;

  @JsonKey(name: 'unavailableItems')
  List<ShopCartItems> unavailableItems;

  @JsonKey(name: 'totalPrice')
  String totalPrice;

  @JsonKey(name: 'activityTag')
  int activityTag;

  @JsonKey(name: 'activityItemCount')
  int activityItemCount;


  ShopCartGoodsListModel(this.shopCartItems,this.unavailableItems,this.totalPrice,this.activityTag,this.activityItemCount);

  factory ShopCartGoodsListModel.fromJson(Map<String, dynamic> srcJson) => _$ShopCartGoodsListModelFromJson(srcJson);

  Map<String, dynamic> toJson() => _$ShopCartGoodsListModelToJson(this);

}


@JsonSerializable()
class ShopCartItems extends Object {

  @JsonKey(name: 'cartId')
  String cartId;

  @JsonKey(name: 'performanceChannel')
  int performanceChannel;

  @JsonKey(name: 'quantity')
  int quantity;

  @JsonKey(name: 'selected')
  int selected;

  @JsonKey(name: 'skuInfo')
  SkuInfo skuInfo;

  @JsonKey(name: 'effective')
  bool effective;

  @JsonKey(name: 'unavailableReason')
  int unavailableReason;

  ShopCartItems(this.cartId,this.performanceChannel,this.quantity,this.selected,this.skuInfo,this.effective,this.unavailableReason,);

  factory ShopCartItems.fromJson(Map<String, dynamic> srcJson) => _$ShopCartItemsFromJson(srcJson);

  Map<String, dynamic> toJson() => _$ShopCartItemsToJson(this);

}


@JsonSerializable()
class SkuInfo extends Object {

  @JsonKey(name: 'saleItemSkuId')
  String saleItemSkuId;

  @JsonKey(name: 'skuImg')
  String skuImg;

  @JsonKey(name: 'salePrice')
  String salePrice;

  @JsonKey(name: 'stockNum')
  String stockNum;

  @JsonKey(name: 'saleSpecUnit')
  String saleSpecUnit;

  @JsonKey(name: 'verifySpec')
  String verifySpec;

  @JsonKey(name: 'verifySpecUnit')
  String verifySpecUnit;

  @JsonKey(name: 'saleName')
  String saleName;

  @JsonKey(name: 'weightType')
  int weightType;

  @JsonKey(name: 'saleUnit')
  String saleUnit;

  @JsonKey(name: 'activityTag')
  int activityTag;




  SkuInfo(this.saleItemSkuId,this.skuImg,this.salePrice,this.stockNum,this.saleSpecUnit,this.verifySpec,
      this.verifySpecUnit,this.saleName,this.weightType,this.saleUnit,this.activityTag, );

  factory SkuInfo.fromJson(Map<String, dynamic> srcJson) => _$SkuInfoFromJson(srcJson);

  Map<String, dynamic> toJson() => _$SkuInfoToJson(this);

}


