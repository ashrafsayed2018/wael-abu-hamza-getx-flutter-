import 'package:get/get.dart';

class HomeController extends GetxController {
  RxInt counter = 120.obs;
  void increment() {
    counter++;
  }

  void decrement() {
    counter--;
  }
}
