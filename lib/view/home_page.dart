import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lesson_1_get_x_reactive_obx/widget/cart_widget.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
        actions: [
          MyCartWidget(),
        ],
      ),
      body: Container(
        child: Column(
          children: [
            RaisedButton(
              onPressed: () => Get.toNamed('/a'),
              child: Text('Goto A'),
            ),
            RaisedButton(
              onPressed: () => Get.toNamed('/b'),
              child: Text('Goto B'),
            ),
          ],
        ),
      ),
    );
  }
}
