import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controller/login_controller.dart';

class HomePage extends StatelessWidget {
  final LoginController loginController = Get.find();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("HomePage"),
      ),
      body: Center(
        child: Column(
          children: [
            Text("HOME PAGE"),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => loginController.logout(),
        child: Icon(Icons.logout),
      ),
    );
  }
}
