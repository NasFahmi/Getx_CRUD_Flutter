import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:getconnect/app/routes/app_pages.dart';

import '../controllers/counter.dart';
import '../controllers/home_controller.dart';

//! ketika sudah dibinding didalam extend nya tinggal Getview<Controller> dan secara default menggunakan variabel controller
class HomeView extends GetView<HomeController> {
  HomeView({Key? key}) : super(key: key);
  //! jika satu halaaman membutuhkan lebih dari 1 controller maka buat terlebih dahulu controllernya
  //! karena secara default ini menggunakan HomeController maka dalam controllernya menggunakan Get.find<contorller ke2>()
  final Counter countercontroller = Get.find<Counter>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('HomeView'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'HomeView is working',
              style: TextStyle(fontSize: 20),
            ),
            Obx(() => Text('ini dari controller default ${controller.count}')),
            ElevatedButton(
              onPressed: () {
                controller.increment();
                print(controller.count);
              },
              child: Text('increment'),
            ),
            Obx(() =>
                Text('ini dari controller counter ${countercontroller.count}')),
            ElevatedButton(
              onPressed: () {
                countercontroller.inc();
                print(countercontroller.count);
              },
              child: Text('increment'),
            ),
            SizedBox(
              height: 24,
            ),
            ElevatedButton(
              onPressed: () {
                Get.toNamed(Routes.LISTTODOS);
              },
              child: Text('GO TO Todos'),
            ),
            SizedBox(
              height: 24,
            ),
            ElevatedButton(
              onPressed: () {
                Get.toNamed(Routes.LIST_USER);
              },
              child: Text('GO TO List'),
            )
          ],
        ),
      ),
    );
  }
}
