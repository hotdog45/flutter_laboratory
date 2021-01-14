import 'package:flutter/material.dart';
import 'package:flutter_laboratory/widget/common/yp_app_bar.dart';

class CategoryPage extends StatefulWidget {
  @override
  _CategoryPageState createState() => _CategoryPageState();
}

class _CategoryPageState extends State<CategoryPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: YPAppBar( "Category",hasBackBtn: false).build(context),
      body: Center(child: Text("Category"),),
    );
  }
}
