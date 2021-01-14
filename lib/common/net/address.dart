


import 'package:flutter_laboratory/common/config/config.dart';

///地址数据
class Address {

  ///谊批宝 ----加网关接口---------------------------------
  ///城配首页接口
  static const String getCompanyHomeLoadHome = "company.home.loadHome";
  static const String getCompanyQueryHotItemsPage = "company.goods.queryHotItemsPage";


  static const String getCheckAppUpgrade = "company.upgrade.checkAppUpgrade";

  static const String getPreProcess = "usercenter.behavior.preProcess";
  static const String mobileLogin = "userceneter.login.mobileLogin";
  static const String sendVerifyCode = "usercenter.sms.sendVerifyCode";

  ///分类一级标题
  static const String getCategoryTitleList = "company.layout.listLayoutInfo";
  ///分类商品
  static const String getCategoryListData = "company.layout.queryLayoutDetail";
  ///对应状态的订单列表
  static const String getCompanyOrderQueryUserOrders = "company.order.queryUserOrders";
  ///订单详情
  static const String getCompanyOrderQueryUserOrderDetail = "company.order.queryUserOrderDetail";
  ///取消订单
  static const String getCompanyOrderCancelOrderl = "company.order.cancelOrder";
  ///个人中心
  static const String getCompanyPageLoadPersonal = "company.page.loadPersonal";
  ///批量加购
  static const String getCompanyCartBatchAddCartItem = "company.cart.batchAddCartItem";
  ///确认收货
  static const String getCompanyOrderCompleteOrder = "company.order.completeOrder";
  ///搜索关键字接口
  static const String getGoodsSearhMatchKeyword = "company.goodssearch.matchKeyword";

  ///订单预览
  static const String getPreviewOrder = "company.order.previewOrder";

  ///提交订单
  static const String submitOrder = "company.order.submitOrder";

 ///支付订单
  static const String paymentOrder = "company.payment.pay";


  ///获取所有前台类目列表(包含一 二级)//   新 new
  static const String getCategoryList = "company.category.queryCategoryList";

  ////获取前台类目商品( )//   新 new
  static const String getCategoryGoodsList = "company.category.queryCategoryItemListByPage";


  ///购物车数量相关
  static const String getShopCartNum = "company.cart.getUserCartItemsCount";
  ///获取购物车列表
  static const String getShopCartList = "company.cart.listCartItems";
  ///加入购物车
  static const String addShopCart = "company.cart.addCartItem";
  ///更新购物车数量
  static const String updateShopCartNum = "company.cart.updateItemQuantity";
  ///更新订单预览数量
  static const String updateOrderPreviewNum = "company.purchase.computePurchaseQuantity";
  ///选中、非选中购物车商品
  static const String selectShopCartGoods = "company.cart.selectCartItems";
  ///删除商品
  static const String deleteShopCartGoods = "company.cart.removeCartItem";
  ///商品详情
  static const String getGoodsDetail = "company.goods.getItemDetails";

  ///热搜词
  static const String getHotWord = "company.search.hotword";




  ///搜索结果接口
  static const String getGoodsSearhSearchSkuByKeyword = "company.goodssearch.searchSkuByKeyword";
  ///商品列表
  static const String queryGoodsListDetail = "company.layout.queryLayoutDetail";
  ///活动列表
  static const String queryActivityListDetail = "company.goods.queryActivityItemsPage";
  ///商务对接
  static const String companyPageLoadOpen = "company.page.loadOpen";



  ///预申请工单请求
  static const String preApply = "company.postSale.preApply";

  ///申请售后
  static const String postSaleApply= "company.postSale.apply";

  ///售后详情
  static const String saleApplyDetail= "company.postSale.detail";

  ///撤销订单
  static const String saleApplyRevoke= "company.postSale.revoke";

  ///退款去向单个商品
  static const String refundWayGo= "company.postSale.queryRefund";

  ///退款去向订单纬度
  static const String refundWayGoForOrder= "company.postSale.queryRefundList";

  static const String getFileToken= "store.token.getFileToken";

  ///退款去向订单纬度
  static const String refundAfterSalesList= "company.postSale.list";

  /// 分页查询用户优惠券列表
  static const String promotionList= "company.promotion.list";


  /// 首页优惠券弹窗
  static const String promotionPopWindow= "company.promotion.popWindow";

  /// 凑单商品列表分页查询
  static const String queryHotItems= "company.goods.queryHotItemsPage";

  /// 分页查询最近购买过的商品列表
  static const String queryPurchased= "company.goods.queryPurchasedItemsPage";

  /// 商品推荐
  static const String queryRecommend= "company.goods.queryItemRecommendsPage";

  //网关API
  static const String ROOT_GATEWAY_RELEASE =
      "https://apigw.ypshengxian.com/request"; //线上
//      "https://apigw-test.ypshengxian.com/request"; //测试
  static const String ROOT_GATEWAY_PRE =
      "https://apigw-pre.ypshengxian.com/request"; //预发
  static const String ROOT_GATEWAY_SIT =
      "https://apigw-sit.ypshengxian.com/request"; //预发
  static const String ROOT_GATEWAY_TEST =
      "https://apigw-test.ypshengxian.com/request"; //测试
  static const String ROOT_GATEWAY_DEV =
      "https://apigw-dev.ypshengxian.com/request"; //开发

  //资源API
  static const String ROOT_RESOURCE_RELEASE =
      "https://api-resource.ypshengxian.com"; //线上
  static const String ROOT_RESOURCE_PRE =
      "https://pre-api-resource.ypshengxian.com"; //预发
  static const String ROOT_RESOURCE_SIT =
      "https://sit-api-resource.ypshengxian.com"; //sit
  static const String ROOT_RESOURCE_TEST =
      "https://test-api-resource.ypshengxian.com"; //测试
  static const String ROOT_RESOURCE_DEV = "http://172.16.4.183:8070"; //开发

  //网页
  static const String ROOT_H5BASEURL_RELEASE = "https://h5.ypshengxian.com"; //线上
  static const String ROOT_H5BASEURL_PRE = "https://pre-h5.ypshengxian.com"; //预发
  static const String ROOT_H5BASEURL_SIT = "https://sit-h5.ypshengxian.com"; //sit
  static const String ROOT_H5BASEURL_TEST = "https://test-h5.ypshengxian.com"; //测试
  static const String ROOT_H5BASEURL_DEV = "https://dev-h5.ypshengxian.com"; //开发

  //API
   static const String UPDATE_IMAGE0 = "https://sit-api-resource.ypshengxian.com";//集成测试
   static const String UPDATE_IMAGE1 = "https://172.16.4.183:8070";//开发
   static const String UPDATE_IMAGE2 = "https://test-api-resource.ypshengxian.com";//测试
   static const String UPDATE_IMAGE3 = "https://pre-api-resource.ypshengxian.com";//预发
   static const String UPDATE_IMAGE4 = "https://api-resource.ypshengxian.com";//线上

  //获取上传图片地址
  static getUpdateImageAddress(num) {
    switch (num) {
      case Config.KEY_API_HOST_RELEASE:
        return UPDATE_IMAGE4;
      case Config.KEY_API_HOST_PRE:
        return UPDATE_IMAGE3;
      case Config.KEY_API_HOST_SIT:
        return UPDATE_IMAGE0;
      case Config.KEY_API_HOST_TEST:
        return UPDATE_IMAGE2;
      case Config.KEY_API_HOST_DEV:
        return UPDATE_IMAGE1;
      default:
        return UPDATE_IMAGE4;
    }
  }


  //加网关API
  static getGatewayRootHostAddress(num) {
    switch (num) {
      case Config.KEY_API_HOST_RELEASE:
        return ROOT_GATEWAY_RELEASE;
      case Config.KEY_API_HOST_PRE:
        return ROOT_GATEWAY_PRE;
      case Config.KEY_API_HOST_SIT:
        return ROOT_GATEWAY_SIT;
      case Config.KEY_API_HOST_TEST:
        return ROOT_GATEWAY_TEST;
      case Config.KEY_API_HOST_DEV:
        return ROOT_GATEWAY_DEV;
      default:
        return ROOT_GATEWAY_RELEASE;
    }
  }

  //获取不同环境的网页
  static getBaseH5Url(apiNum)  {

    switch (apiNum) {
      case Config.KEY_API_HOST_RELEASE:
        return ROOT_H5BASEURL_RELEASE;
      case Config.KEY_API_HOST_PRE:
        return ROOT_H5BASEURL_PRE;
      case Config.KEY_API_HOST_SIT:
        return ROOT_H5BASEURL_SIT;
      case Config.KEY_API_HOST_TEST:
        return ROOT_H5BASEURL_TEST;
      case Config.KEY_API_HOST_DEV:
        return ROOT_H5BASEURL_DEV;
      default:
        return ROOT_H5BASEURL_RELEASE;
    }
  }
  
}
