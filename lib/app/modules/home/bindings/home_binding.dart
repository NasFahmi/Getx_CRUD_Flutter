import 'package:get/get.dart';
import 'package:getconnect/app/modules/home/controllers/counter.dart';

import '../controllers/home_controller.dart';
// ! biddings digunakan untuk memanggil controller kedalam view tanpa harus mengput disana, jadi jika membutuhkan controller kita tinggal find saja

class HomeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<HomeController>(
      () => HomeController(),
    );
    //! setelah itu tambah controller di bindings
    Get.lazyPut<Counter>(
      () => Counter(),
    );
  }
}
