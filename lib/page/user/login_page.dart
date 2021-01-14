
import 'package:flutter/material.dart';
import 'package:flutter_laboratory/widget/common/yp_app_bar.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: YPAppBar( "Login").build(context),
      body: Center(child: Text("Login"),),
    );
  }
}
