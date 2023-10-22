import 'package:get/get.dart';

import '../controllers/todosdetails_controller.dart';

class TodosdetailsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<TodosdetailsController>(
      () => TodosdetailsController(),
    );
  }
}
