import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:state_management/getx/controller/count_controller.dart';

class CountPage extends GetView<CountController> {
  const CountPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('State Manager - GetX')),
      body: Center(
        child: Obx(
          () => Text(
            '${controller.count.value}',
            style: const TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
          ),
        ),
      ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          FloatingActionButton(
            onPressed: () => controller.increment(),
            child: const Icon(Icons.add),
          ),
          const SizedBox(height: 8),
          FloatingActionButton(
            onPressed: () => controller.decrement(),
            child: const Icon(Icons.remove),
          ),
        ],
      ),
    );
  }
}
