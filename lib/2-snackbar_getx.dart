import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("SnackBar GetX"),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            // Dengan GetX pembuatan snackbar menjadi lebih ringkas
            Get.snackbar(
              "Hallo",
              "Hallo Ini SnackBar",
              snackPosition: SnackPosition.TOP,
              backgroundColor: Colors.amber,
              margin: EdgeInsets.only(top: 70),
            );
          },
          child: Text("Show SnackBar"),
        ),
      ),
    );
  }
}
