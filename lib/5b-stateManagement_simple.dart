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
        title: Text("StateManagement GetX Simple"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GetBuilder<HomeController>(
              builder: (controller) => Text(
                "${controller.dataPantau}",
                style: TextStyle(
                  fontSize: 30,
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: () {
                homeC.tambahData();
              },
              child: Text("Tambah Data"),
            ),
            ElevatedButton(
              onPressed: () {
                homeC.refreshTampilan();
              },
              child: Text("Refresh Data"),
            )
          ],
        ),
      ),
    );
  }
}

class HomeController extends GetxController {
  var dataPantau = 0;

  void tambahData() {
    dataPantau++;
  }

  void refreshTampilan() {
    update();
  }
}
