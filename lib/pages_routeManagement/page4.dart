import 'package:flutter/material.dart';
import 'package:get/get.dart';
// import '../main.dart';
import '../9-route_management_getx.dart';

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
                Get.offAll(HomePage());
              },
              child: Text("Back To Home"),
            ),
          ],
        ),
      ),
    );
  }
}
