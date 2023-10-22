import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../../routes/app_pages.dart';
import '../controllers/list_user_controller.dart';

class ListUserView extends GetView<ListUserController> {
  const ListUserView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ListUserView'),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'List User',
                      style: TextStyle(fontSize: 20),
                    ),
                    ElevatedButton(
                      child: Text('Add User'),
                      onPressed: () {
                        // print('panjang array ${controller.dataAll.length}');
                        // print(
                        //     'isi dari salah satu data ${controller.dataAll[0]['firstname']}');
                        Get.toNamed(Routes.ADD_USER);
                      },
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 24,
              ),
              Expanded(
                // ! diview diparsing ke listview.buiilder dan jangan lupa untuk mengwrap menggunakan Obx
                child: Obx(
                  () => ListView.builder(
                    itemCount: controller.mahasiswa.length,
                    itemBuilder: (context, index) {
                      // ! Parsing data JSON kedalam object mahasiswa
                      return GestureDetector(
                        onTap: () {
                          Get.toNamed(Routes.DETAIL,
                              arguments: controller.mahasiswa[index].id);
                        },
                        child: ListTile(
                          title: Text(
                              '${controller.mahasiswa[index].firstname} ${controller.mahasiswa[index].lastname}'),
                          subtitle: Text(controller.mahasiswa[index].nim),
                        ),
                      );
                    },
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
