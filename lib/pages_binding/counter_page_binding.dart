import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kuldii_section7/controller/counter_controller.dart';

class CounterPageBinding extends StatelessWidget {
  // final counterC = Get.put(CounterController());
  CounterController counterC = Get.find();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Bindings Builder - Counter Page"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Obx(
              () => Text(
                "${counterC.dataCounter}",
                style: TextStyle(fontSize: 30),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () {
                    counterC.decrement();
                  },
                  child: Text(
                    "-",
                    style: TextStyle(fontSize: 30),
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                ElevatedButton(
                  onPressed: () {
                    counterC.increment();
                  },
                  child: Text(
                    "+",
                    style: TextStyle(fontSize: 30),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
