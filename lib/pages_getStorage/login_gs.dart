import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controller/login_controller.dart';
import 'package:get_storage/get_storage.dart';

class LoginPage extends StatelessWidget {
  final box = GetStorage();
  final loginController = Get.put(LoginController());

  @override
  Widget build(BuildContext context) {
    if (box.read("dataRememberMe") != null) {
      loginController.emailC.text = box.read("dataRememberMe")["email"];
      loginController.passC.text = box.read("dataRememberMe")["password"];
    }

    return Scaffold(
      appBar: AppBar(
        title: Text("Get Storage"),
      ),
      body: ListView(
        padding: EdgeInsets.all(20),
        children: [
          TextField(
            controller: loginController.emailC,
            autocorrect: false,
            keyboardType: TextInputType.emailAddress,
            textInputAction: TextInputAction.next,
            decoration: InputDecoration(
              labelText: "Email",
              border: OutlineInputBorder(),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Obx(
            () => TextField(
              controller: loginController.passC,
              autocorrect: false,
              obscureText: loginController.isHidden.value,
              textInputAction: TextInputAction.done,
              decoration: InputDecoration(
                labelText: "Password",
                border: OutlineInputBorder(),
                suffixIcon: IconButton(
                  onPressed: () => loginController.isHidden.toggle(),
                  icon: Icon(Icons.remove_red_eye),
                ),
              ),
            ),
          ),
          Obx(
            () => CheckboxListTile(
              controlAffinity: ListTileControlAffinity.leading,
              value: loginController.rememberMe.value,
              onChanged: (value) {
                loginController.rememberMe.toggle();
              },
              title: Text("Remember Me"),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          ElevatedButton(
            onPressed: () {
              loginController.login();
            },
            child: Text("LOGIN"),
          )
        ],
      ),
    );
  }
}
