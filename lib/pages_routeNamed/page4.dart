import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PageREmpat extends StatelessWidget {
  const PageREmpat({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Page 4"),
      ),
      body: Center(
        child: ListView(
          padding: EdgeInsets.all(20),
          children: [
            Text(
              "Page 4",
              style: TextStyle(fontSize: 30),
            ),
            SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: () {
                Get.offAllNamed("/home");
              },
              child: Text("Back To Home"),
            ),
          ],
        ),
      ),
    );
  }
}
