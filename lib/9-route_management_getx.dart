import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'pages_routeManagement/page1.dart';
import 'pages_routeManagement/page2.dart';

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
        title: Text("Route Management GetX - Home"),
      ),
      body: Center(
        child: ListView(
          padding: EdgeInsets.all(20),
          children: [
            Text(
              "Home Page",
              style: TextStyle(fontSize: 30),
            ),
            SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: () => Get.off(PageRSatu()),
              child: Text("Page 1"),
            ),
            ElevatedButton(
              onPressed: () => Get.to(PageRDua()),
              child: Text("Page 2"),
            ),
          ],
        ),
      ),
    );
  }
}
