import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kuldii_section7/pages_routeManagement/page3.dart';

class PageRDua extends StatelessWidget {
  const PageRDua({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Page 2"),
      ),
      body: Center(
        child: ListView(
          padding: EdgeInsets.all(20),
          children: [
            Text(
              "Page 2",
              style: TextStyle(fontSize: 30),
            ),
            SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: () {
                Get.back();
              },
              child: Text("Back Home"),
            ),
            ElevatedButton(
              onPressed: () {
                Get.to(PageRTiga());
              },
              child: Text("To Page 3"),
            )
          ],
        ),
      ),
    );
  }
}
