import 'package:get/get.dart';

class MyController extends GetxController {
  var count = 0.obs;

  increment() => count++;
}
