import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PageRSatu extends StatelessWidget {
  const PageRSatu({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Page 1"),
      ),
      body: Center(
        child: ListView(
          padding: EdgeInsets.all(20),
          children: [
            Text(
              "Page 1",
              style: TextStyle(fontSize: 30),
            ),
            SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: () {
                Get.offNamed("/home");
              },
              child: Text("Back Home"),
            )
          ],
        ),
      ),
    );
  }
}
