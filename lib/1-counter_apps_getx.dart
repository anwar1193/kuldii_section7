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
  // Penggil class Getx increment-decrement (bungkus dalam variable)
  final mycontroller = Get.put(MyController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Latihan GETX"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // Obx digunakan untuk membungkus widget yang akan berubah
          Obx(
            () {
              return Text(
                "${mycontroller.data.value}",
                style: TextStyle(fontSize: 60),
              );
            },
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton(
                onPressed: () {
                  mycontroller.decrement();
                },
                child: Text(
                  "-",
                  style: TextStyle(fontSize: 20),
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  mycontroller.increment();
                },
                child: Text(
                  "+",
                  style: TextStyle(fontSize: 20),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}

// Buat Class Getx untuk increment & decrement data
class MyController extends GetxController {
  // .obs menunjukan kalau data selalu dipantau
  var data = 0.obs;

  increment() {
    data++;
  }

  decrement() {
    data--;
  }
}
