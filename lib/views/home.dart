import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_wael/controller/homecontroller.dart';

class Home extends StatelessWidget {
  Home({Key? key}) : super(key: key);

  int counter = 120;
  final HomeController homeController = Get.put(HomeController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('home page'),
      ),
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Obx(() =>
                Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: IconButton(
                      onPressed: () {
                        homeController.increment();
                      },
                      icon: const Icon(Icons.add),
                    ),
                  ),
                  Center(
                    child: Text(
                      '${homeController.counter}',
                      style: const TextStyle(
                        color: Colors.red,
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: IconButton(
                      onPressed: () {
                        homeController.decrement();
                      },
                      icon: const Icon(Icons.remove),
                    ),
                  ),
                ])),
          ],
        ),
      ),
    );
  }
}
