import 'package:exam_0425/modal/modal_class.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';

class InventoryController extends GetxController {
  var InventoryList = <ModalClass>[].obs;
  TextEditingController txtName = TextEditingController();
  TextEditingController txtCategory = TextEditingController();
  TextEditingController txtQuantity = TextEditingController();
}

// --------------------------------

//------------------------------
