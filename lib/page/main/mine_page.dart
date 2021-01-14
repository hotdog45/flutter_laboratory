
import 'package:flutter/material.dart';
import 'package:flutter_laboratory/widget/common/yp_app_bar.dart';

class MinePage extends StatefulWidget {
  @override
  _MinePageState createState() => _MinePageState();
}

class _MinePageState extends State<MinePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: YPAppBar( "Mine",hasBackBtn: false).build(context),
      body: Center(child: Text("Mine"),),
    );
  }
}
