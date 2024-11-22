import 'package:exam_0425/modal/modal_class.dart';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../seviercs/db_helper.dart';

class InventoryController extends GetxController {
  var InventoryList = <ModalClass>[].obs;
  TextEditingController txtName = TextEditingController();
  TextEditingController txtCategory = TextEditingController();
  TextEditingController txtQuantity = TextEditingController();

  @override
  void onInit() {
    super.onInit();
    fetchData();
  }

  Future<void> fetchData() async {
    final books = await DbHelper.dbHelper.readData();
    InventoryList.value =
        books.map((bookMap) => ModalClass.fromMap(bookMap)).toList();
    print(InventoryList);
  }

  void addProduct(ModalClass inventory) {
    DbHelper.dbHelper.insertDatabase(inventory);
    fetchData();
  }

  void updateProduct(ModalClass inventory, String name) {
    DbHelper.dbHelper.updateDatabase(inventory, name);
    fetchData();
  }

  void deleteProduct(String name) {
    DbHelper.dbHelper.deleteDatabase(name);
    fetchData();
  }
}
