import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/todosdetails_controller.dart';

class TodosdetailsView extends GetView<TodosdetailsController> {
  const TodosdetailsView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('TodosdetailsView'),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Center(
          child: Obx(
            () => Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  '${controller.argument}',
                  style: TextStyle(fontSize: 20),
                ),
                Text(controller.todo.value.id ?? '${controller.todo.value.id}'),
                Text('${controller.todo.value.todoName}'),
                Text(
                  controller.todo.value.isComplete == null
                      ? ''
                      : controller.todo.value.isComplete == true
                          ? 'completed'
                          : controller.todo.value.isComplete == false
                              ? 'Not complete'
                              : 'Not Submited',
                ),
                Text('${controller.todo.value.createdAt}'),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
