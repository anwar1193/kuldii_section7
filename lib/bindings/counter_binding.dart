import 'package:get/get.dart';
import '../controller/counter_controller.dart';

class CounterBinding extends Bindings {
  @override
  void dependencies() {
    // Bisa Banyak Controller
    Get.lazyPut(() => CounterController());
  }
}
