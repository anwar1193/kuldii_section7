import 'package:get/get.dart';

class CounterController extends GetxController {
  RxInt dataCounter = 0.obs;

  void increment() {
    dataCounter++;
  }

  void decrement() {
    dataCounter--;
  }
}
