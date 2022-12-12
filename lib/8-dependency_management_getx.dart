import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'pages/page1.dart';
import 'controller/page1_controller.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // final mycontroller = Get.put(PageSatuController());
  final mycontroller = Get.lazyPut(() => PageSatuController());

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      home: PageSatu(),
    );
  }
}
