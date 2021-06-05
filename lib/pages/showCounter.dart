import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ShowCounter extends StatelessWidget {
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(child: Text("hello".tr , style: TextStyle(fontSize: 30),),),
    );
  }
}