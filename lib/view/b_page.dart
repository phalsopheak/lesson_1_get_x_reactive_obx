import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lesson_1_get_x_reactive_obx/controller/count_controller.dart';
import '../widget/cart_widget.dart';

class BPage extends StatelessWidget {
  final CountController cc = Get.find();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('B'),
        actions: [
          MyCartWidget(),
        ],
      ),
      body: Container(
        child: Column(
          children: [
            RaisedButton(
              onPressed: () => cc.increaseCounter(),
              child: Text('Increase'),
            ),
            RaisedButton(
              onPressed: () => cc.decreaseCounter(),
              child: Text('Decrease'),
            ),
            RaisedButton(
              onPressed: () => cc.resetCounter(),
              child: Text('Reset'),
            )
          ],
        ),
      ),
    );
  }
}
