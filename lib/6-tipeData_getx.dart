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
  final homeC = Get.put(HomeController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("TipeData GetX"),
      ),
      body: ListView(
        padding: EdgeInsets.all(20),
        children: [
          // ROW DATA ANGKA------------------------------------------------------
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Obx(
                () => Text(
                  "${homeC.dataAngka}",
                  style: TextStyle(
                    fontSize: 20,
                  ),
                ),
              ),
              // Row Data Angka
              Row(
                children: [
                  ElevatedButton(
                    onPressed: () {
                      homeC.decrement();
                    },
                    child: Text(
                      "-",
                      style: TextStyle(fontSize: 20),
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  ElevatedButton(
                    onPressed: () {
                      homeC.increment();
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

          // ROW DATA String------------------------------------------------------
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Obx(
                () => Text(
                  "${homeC.dataText}",
                  style: TextStyle(
                    fontSize: 20,
                  ),
                ),
              ),
              // Row Data Angka
              Row(
                children: [
                  ElevatedButton(
                    onPressed: () {
                      homeC.updateText();
                    },
                    child: Text(
                      "Update",
                      style: TextStyle(fontSize: 20),
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  ElevatedButton(
                    onPressed: () {
                      homeC.resetText();
                    },
                    child: Text(
                      "Reset",
                      style: TextStyle(fontSize: 20),
                    ),
                  )
                ],
              )
            ],
          ),

          // ROW DATA DOUBLE------------------------------------------------------
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Obx(
                () => Text(
                  "${homeC.dataDouble}",
                  style: TextStyle(
                    fontSize: 20,
                  ),
                ),
              ),
              // Row Data Angka
              Row(
                children: [
                  ElevatedButton(
                    onPressed: () {
                      homeC.decrement_double();
                    },
                    child: Text(
                      "-",
                      style: TextStyle(fontSize: 20),
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  ElevatedButton(
                    onPressed: () {
                      homeC.increment_double();
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

          // ROW DATA Boolean------------------------------------------------------
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Obx(
                () => Text(
                  "${homeC.dataBoolean}",
                  style: TextStyle(
                    fontSize: 20,
                  ),
                ),
              ),
              // Row Data Angka
              Row(
                children: [
                  ElevatedButton(
                    onPressed: () {
                      homeC.gantiBoolean();
                    },
                    child: Text(
                      "Ganti Boolean",
                      style: TextStyle(fontSize: 20),
                    ),
                  ),
                ],
              )
            ],
          ),

          // ROW DATA List------------------------------------------------------
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Obx(
                () => Text(
                  "${homeC.dataList}",
                  style: TextStyle(
                    fontSize: 20,
                  ),
                ),
              ),
              // Row Data Angka
              Row(
                children: [
                  ElevatedButton(
                    onPressed: () {
                      homeC.tambahList();
                    },
                    child: Text(
                      "Tambah List",
                      style: TextStyle(fontSize: 20),
                    ),
                  ),
                ],
              )
            ],
          ),
        ],
      ),
    );
  }
}

class HomeController extends GetxController {
  RxInt dataAngka = 0.obs;
  RxString dataText = "Data".obs;
  RxDouble dataDouble = 0.0.obs;
  RxBool dataBoolean = true.obs;
  RxList<int> dataList = [1, 2, 3].obs;

  // Fungsi Untuk Data Angka
  void increment() {
    dataAngka++;
  }

  void decrement() {
    dataAngka--;
  }

  // Fungsi Untuk Data String
  void updateText() {
    dataText.value = "Data Update";
  }

  void resetText() {
    dataText.value = "Data";
  }

  // Fungsi Untuk Data Double
  void increment_double() {
    dataDouble.value++;
  }

  void decrement_double() {
    dataDouble.value--;
  }

  // Fungsi untuk Data Boolean
  void gantiBoolean() {
    if (dataBoolean == true) {
      dataBoolean.value = false;
    } else {
      dataBoolean.value = true;
    }
  }

  // Fungsi untuk Data List
  int tambahanList = 4;
  void tambahList() {
    dataList.add(tambahanList);
    tambahanList++;
  }
}
