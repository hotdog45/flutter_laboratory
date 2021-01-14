
import 'package:flutter/material.dart';
import 'package:flutter_laboratory/widget/common/yp_app_bar.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: YPAppBar( "首页",hasBackBtn: false).build(context),
      body: Center(child: Text("首页"),),
    );
  }
}
