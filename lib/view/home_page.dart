import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../compontants/data.dart';
import '../controller/controller.dart';

InventoryController controller = Get.put(InventoryController());

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text('Inventory Management App'),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showDialog(
            context: context,
            builder: (context) => dataDialog(controller),
          );
        },
        child: Icon(
          Icons.add,
          color: Colors.white,
        ),
      ),
      body: Obx(() => ListView.builder(
            itemCount: controller.InventoryList.length,
            itemBuilder: (context, index) => Container(
              height: 100,
              width: 300,
              decoration: BoxDecoration(
                color: Colors.red.shade100,
                borderRadius: BorderRadius.circular(5),
              ),
              child: Row(
                children: [
                  Text(controller.InventoryList[index].Quantity!.toString()),
                  Text(controller.InventoryList[index].name!),
                  Text(controller.InventoryList[index].Category!),
                ],
              ),
            ),
          )),
    );
  }
}
