import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:state_management/getx/controller/count_controller.dart';
import 'package:state_management/getx/view/count_page.dart';

class CountApp extends StatelessWidget {
  const CountApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'State Manager - GetX',
      home: const CountPage(),
      initialBinding: BindingsBuilder(() {
        Get.put(CountController());
      }),
    );
  }
}
