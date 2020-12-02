import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:icon_badge/icon_badge.dart';
import 'package:lesson_1_get_x_reactive_obx/controller/color_controller.dart';
import 'package:lesson_1_get_x_reactive_obx/controller/count_controller.dart';

class MyCartWidget extends StatelessWidget {
  final CountController cc = Get.find();
  final ColorController coc = Get.find();
  @override
  Widget build(BuildContext context) {
    return Obx(
      () => IconBadge(
        icon: Icon(Icons.shopping_cart),
        itemCount: cc.count.value,
        badgeColor: coc.color.value,
        itemColor: Colors.white,
        maxCount: 99,
        right: 5,
        top: 10,
        hideZero: false,
        onTap: () {
          print('test');
        },
      ),
    );
  }
}
