import 'package:flutter/material.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:get/get.dart';

class ColorController extends GetxController {
  var color = Colors.orangeAccent.obs;

  void changeCartColor(Color c) {
    color.value = c;
  }
}
