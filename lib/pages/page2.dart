import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kuldii_section7/pages/page1.dart';
import '../controller/page1_controller.dart';

class PageDua extends StatelessWidget {
  PageSatuController mycontroller = Get.find();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Dependency Management GetX - Page2"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Nama : ${mycontroller.data2['nama']}, Umur : ${mycontroller.data2['umur']}",
              style: TextStyle(
                fontSize: 20,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (context) => PageSatu(),
                    ));
              },
              child: Text("To Page 1"),
            )
          ],
        ),
      ),
    );
  }
}
