import 'package:get/get.dart';

class CountController extends GetxController {
  RxInt count = 0.obs;

  void increment() {
    count++;
  }

  void decrement() {
    count--;
  }
}