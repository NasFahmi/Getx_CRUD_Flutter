import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:getconnect/app/routes/app_pages.dart';

import '../controllers/listtodos_controller.dart';

class ListtodosView extends GetView<ListtodosController> {
  const ListtodosView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ListtodosView'),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Obx(
          () => ListView.builder(
            itemCount: controller.todos.length,
            itemBuilder: (context, index) {
              return GestureDetector(
                onTap: () {
                  Get.toNamed(Routes.TODOSDETAILS,
                      arguments: controller.todos[index].id);
                },
                child: ListTile(
                  title: Text('${controller.todos[index].todoName}'),
                  subtitle: Text(controller.todos[index].isComplete == true
                      ? "completed"
                      : controller.todos[index].isComplete == false
                          ? "Not complete"
                          : "Not Submited"),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
