import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_saegis/controller.dart';

class PageOne extends StatelessWidget {
  final MyController _myController = Get.find();

  PageOne({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          children: [
            ElevatedButton(child: const Text('Go Back'), onPressed: () => Get.back()),
            Obx(() => Text('Clicks ${_myController.count}')),
            OutlinedButton(onPressed: () => _myController.increment(), child: const Text('Increase')),
          ],
        ),
      ),
    );
  }
}
