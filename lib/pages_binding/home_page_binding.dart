import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomePageBinding extends StatelessWidget {
  const HomePageBinding({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Bindings Builder - Home"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Home Page",
              style: TextStyle(fontSize: 30),
            ),
            SizedBox(
              height: 10,
            ),
            ElevatedButton(
              onPressed: () {
                Get.toNamed("/counter");
              },
              child: Text("To Counter Page"),
            )
          ],
        ),
      ),
    );
  }
}
