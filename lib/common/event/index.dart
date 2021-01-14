import 'package:event_bus/event_bus.dart';
import 'package:flutter/material.dart';

EventBus eventBus = new EventBus();

class HttpErrorEvent {
  final int code;

  final String message;

  HttpErrorEvent(this.code, this.message);
}

// 选择后滑动
class ScrollToItemEvent {
  final int indexSel;

  ScrollToItemEvent(this.indexSel);
}


// 首页滑动底部tap置顶显示
class ScrollToTopEvent {
   final int toTop;

   ScrollToTopEvent(this.toTop);
}



// 分类二级选择后滑动
class ClassificationScrollToItemEvent {
  final int indexSel;
  ClassificationScrollToItemEvent(this.indexSel);
}


// 切换tab
class SelTabEvent {
  final int indexSel;

  SelTabEvent(this.indexSel);
}

//加购回调
class AddCartEvent {
  final int shipType;

  AddCartEvent(this.shipType);
}

//刷新购物车
class GetShopCartList {
  GetShopCartList();
}
//刷新分类列表
class RefreshHomeData {
  RefreshHomeData();
}

//凑单差多少钱
class GetTotalPrice {
  final String price;
  GetTotalPrice(this.price);
}
//选购完成
class PurchaseFinished{

  PurchaseFinished( );
}

//刷新分类列表
class RefreshCategoryList {
  RefreshCategoryList();
}

//刷新分类列表
class RefreshOrderDetail {
  RefreshOrderDetail();
}
//刷新订单列表
class RefreshOrderList {
  RefreshOrderList();
}

//"我的信息" 刷新优惠券数量
class RefreshMine {
  RefreshMine();
}

//加购成功回调
class AddShopCart{
  final String id;
  AddShopCart(this.id);
}

//获取购物车
class GetShopCartNum{
  final int num;
  GetShopCartNum(this.num);
}

//支付结果
class GetPayResult{
  final int num;
  GetPayResult(this.num);
}

// 用户不存在
class UserNoHave{
  UserNoHave();
}

// 无网络
class NoNet{
  final bool notNet;
  NoNet(this.notNet);
}

// 加购动画
class AddCarAnim{
  final Offset offset;
  final int typeFrom;//从哪里动画 1 首页 2采购榜更多 3 搜索 4 详情
  AddCarAnim(this.offset,this.typeFrom);
}

