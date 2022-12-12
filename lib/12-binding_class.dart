import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kuldii_section7/pages_binding/counter_page_binding.dart';
import 'pages_binding/home_page_binding.dart';
import 'bindings/counter_binding.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      home: HomePageBinding(),
      getPages: [
        GetPage(
          name: "/counter",
          page: () => CounterPageBinding(),
          binding: CounterBinding(),
        ),
      ],
    );
  }
}
