import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lesson_1_get_x_reactive_obx/controller/color_controller.dart';
import 'package:lesson_1_get_x_reactive_obx/controller/count_controller.dart';
import 'package:lesson_1_get_x_reactive_obx/widget/cart_widget.dart';

class APage extends StatelessWidget {
  final CountController cc = Get.find();
  final ColorController coc = Get.find();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('A'),
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
            ),
            RaisedButton(
              onPressed: () => coc.changeCartColor(Colors.blueAccent),
              child: Text('Change Cart Color to Green'),
            )
          ],
        ),
      ),
    );
  }
}
