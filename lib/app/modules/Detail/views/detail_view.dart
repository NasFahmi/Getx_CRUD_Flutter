import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getconnect/app/routes/app_pages.dart';
import '../controllers/detail_controller.dart';

class DetailView extends GetView<DetailController> {
  const DetailView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('DetailView'),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Center(
          child: Obx(
            () => Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('id = ${controller.mahasiswaData.value.id}'),
                Text(
                    'Name = ${controller.mahasiswaData.value.firstname} ${controller.mahasiswaData.value.lastname}'),
                Text('Email = ${controller.mahasiswaData.value.email}'),
                Text('Address = ${controller.mahasiswaData.value.address}'),
                Text('Nim = ${controller.mahasiswaData.value.nim}'),
                Text(
                    'Phone Number = ${controller.mahasiswaData.value.phoneNumber}'),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    ElevatedButton(
                      onPressed: () {
                        controller.deleteSingleData();
                      },
                      child: Text('Delete'),
                    ),
                    ElevatedButton(
                      onPressed: () {
                        Get.toNamed(Routes.EDIT_USER,
                            arguments: controller.mahasiswaData);
                      },
                      child: Text('Edit User'),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
