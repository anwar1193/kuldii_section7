import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class LoginController extends GetxController {
  TextEditingController emailC = TextEditingController();
  TextEditingController passC = TextEditingController();

  RxBool isHidden = true.obs;
  RxBool rememberMe = true.obs;

  void login() async {
    final box = GetStorage();

    if (emailC.text == 'admin@mail.com' && passC.text == 'admin') {
      if (box.read("dataRememberMe") != null) {
        box.remove("dataRememberMe");
      }
      if (rememberMe.isTrue) {
        // Simpan data email & password di local storage
        box.write(
          "dataRememberMe",
          {
            "email": emailC.text,
            "password": passC.text,
          },
        );
      }
      Get.offAllNamed('/home');
    } else {
      Get.defaultDialog(
        title: "Login Gagal",
        middleText: "Kombinasi Email & Password Salah!",
      );
    }
  }

  void logout() {
    Get.offAllNamed("/login");
  }
}
