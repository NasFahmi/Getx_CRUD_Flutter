import 'package:get/get.dart';
import 'package:getconnect/app/data/Models/todo.dart';
import 'package:getconnect/app/data/Providers/todosProvider.dart';

class ListtodosController extends GetxController {
  TodosProvider todosProvider = TodosProvider();
  RxList todos = [].obs;
  @override
  void onInit() {
    super.onInit();

    fetchAllData();
  }

  Future fetchAllData() async {
    try {
      final response = await todosProvider.getAllData();
      if (response.isOk) {
        List<dynamic> data = response.body['data'];
        List<Todos> dataTodos =
            data.map((dynamic e) => Todos.fromJson(e)).toList();
        todos.assignAll(dataTodos);
      }
    } catch (e) {
      return Future.error(e);
    }
  }
}
