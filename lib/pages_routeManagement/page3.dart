import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kuldii_section7/pages_routeManagement/page4.dart';

class PageRTiga extends StatelessWidget {
  const PageRTiga({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Page 3"),
      ),
      body: Center(
        child: ListView(
          padding: EdgeInsets.all(20),
          children: [
            Text(
              "Page 3",
              style: TextStyle(fontSize: 30),
            ),
            SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: () {
                Get.back();
              },
              child: Text("Back Page 2"),
            ),
            ElevatedButton(
              onPressed: () {
                Get.to(PageREmpat());
              },
              child: Text("To Page 4"),
            )
          ],
        ),
      ),
    );
  }
}
