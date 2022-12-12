import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'pages_routeNamed/page1.dart';
import 'pages_routeNamed/page2.dart';
import 'pages_routeNamed/page3.dart';
import 'pages_routeNamed/page4.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      home: HomePage(),
      getPages: [
        GetPage(name: "/home", page: () => HomePage()),
        GetPage(name: "/page_satu", page: () => PageRSatu()),
        GetPage(name: "/page_dua", page: () => PageRDua()),
        GetPage(name: "/page_tiga", page: () => PageRTiga()),
        GetPage(name: "/page_empat", page: () => PageREmpat()),
      ],
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Route Named - Home"),
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
              onPressed: () => Get.offNamed("/page_satu"),
              child: Text("Page 1"),
            ),
            ElevatedButton(
              onPressed: () => Get.toNamed("/page_dua"),
              child: Text("Page 2"),
            ),
          ],
        ),
      ),
    );
  }
}
