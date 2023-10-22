import 'package:get/get.dart';

import '../controllers/listtodos_controller.dart';

class ListtodosBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ListtodosController>(
      () => ListtodosController(),
    );
  }
}
