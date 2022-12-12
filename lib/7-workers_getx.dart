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
  final home_controller = Get.put(HomeController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Worker GetX"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Obx(
                () => Text(
                  "Perubahan Terjadi Sebanyak : ${home_controller.jumlahPerubahan} Kali",
                  style: TextStyle(fontSize: 18),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              TextField(
                onChanged: (value) => home_controller.updatePerubahan(),
                decoration: InputDecoration(
                  labelText: "Data",
                  border: OutlineInputBorder(),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class HomeController extends GetxController {
  RxInt jumlahPerubahan = 0.obs;

  void updatePerubahan() {
    jumlahPerubahan++;
  }

  @override
  void onInit() {
    // ever(jumlahPerubahan, (callback) => print("Dieksekusi Setiap Ada 1 Perubahan"));

    // once(jumlahPerubahan, (callback) => print("Dieksekusi Hanya 1x"));

    // interval(jumlahPerubahan, (callback) => print("Dieksekusi Setiap 2 detik"),
    //     time: Duration(seconds: 2));

    debounce(jumlahPerubahan,
        (callback) => print("Dieksekusi 2 detik setelah berhenti ketik"),
        time: Duration(seconds: 2));

    super.onInit();
  }
}
