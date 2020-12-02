import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:get/instance_manager.dart';
import 'package:get/route_manager.dart';
import 'package:lesson_1_get_x_reactive_obx/controller/count_controller.dart';
import 'package:lesson_1_get_x_reactive_obx/view/a_page.dart';
import 'package:lesson_1_get_x_reactive_obx/view/b_page.dart';
import 'package:lesson_1_get_x_reactive_obx/view/home_page.dart';

import 'controller/color_controller.dart';

void main() {
  runApp(
    GetMaterialApp(
      initialRoute: '/',
      initialBinding: CounterBinding(),
      getPages: [
        GetPage(
          name: '/',
          page: () => HomePage(),
        ),
        GetPage(
          name: '/a',
          page: () => APage(),
        ),
        GetPage(
          name: '/b',
          page: () => BPage(),
          transition: Transition.zoom,
        ),
      ],
    ),
  );
}

class CounterBinding implements Bindings {
  @override
  void dependencies() {
    Get.put<CountController>(CountController());
    Get.put<ColorController>(ColorController());
  }
}
