
import 'package:flutter/material.dart';
import 'package:flutter_laboratory/widget/common/yp_app_bar.dart';

class ShoppingCartPage extends StatefulWidget {
  @override
  _ShoppingCartPageState createState() => _ShoppingCartPageState();
}

class _ShoppingCartPageState extends State<ShoppingCartPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: YPAppBar( "ShoppingCart",hasBackBtn: false).build(context),
      body: Center(child: Text("ShoppingCart"),),
    );
  }
}
