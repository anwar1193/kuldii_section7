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
        title: Text("GetX Dialog"),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Get.defaultDialog(
                title: "Judul Dialog",
                content: Text("Ini adalah isi dialog. Are u ok?"),
                actions: [
                  ElevatedButton(
                    onPressed: () {},
                    child: Text("Done"),
                  ),
                  ElevatedButton(
                    onPressed: () {},
                    child: Text("Cancel"),
                  )
                ]);
          },
          child: Text("Show Dialog"),
        ),
      ),
    );
  }
}
