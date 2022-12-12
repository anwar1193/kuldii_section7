import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kuldii_section7/pages/page2.dart';
import '../controller/page1_controller.dart';

class PageSatu extends StatelessWidget {
  PageSatuController mycontroller = Get.find();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Dependency Management GetX - Page1"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Nama : ${mycontroller.data['nama']}, Umur : ${mycontroller.data['umur']}",
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
                    builder: (context) => PageDua(),
                  ),
                );
              },
              child: Text("To Page 2"),
            )
          ],
        ),
      ),
    );
  }
}
