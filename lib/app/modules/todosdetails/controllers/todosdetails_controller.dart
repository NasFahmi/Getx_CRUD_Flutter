import 'package:get/get.dart';
import 'package:getconnect/app/data/Models/todo.dart';
import 'package:getconnect/app/data/Providers/todosProvider.dart';

class TodosdetailsController extends GetxController {
  TodosProvider todosProvider = TodosProvider();
  var argument;
  var todo = Todos(
    id: '',
    todoName: '',
    isComplete: null,
    createdAt: '',
    updatedAt: '',
    v: 0,
  ).obs;
  @override
  void onInit() {
    super.onInit();
    argument = Get.arguments;
    // print(todo);
  }

  @override
  void onReady() {
    // TODO: implement onReady
    super.onReady();
    print('ready');
    fetchSingleData(argument);
  }

  @override
  void onClose() {
    super.onClose();
    fetchSingleData(argument);
  }

  Future<void> fetchSingleData(String id) async {
    try {
      final response = await todosProvider.getData(id);
      if (response.isOk) {
        Map<String, dynamic> data = response.body['data'];
        Todos todoprase = Todos.fromJson(data);
        print(' todo name is ${todoprase.todoName}');
        print(' todo isComplete is is${todoprase.isComplete}');
        // Update the properties of the 'todo' object
        todo.update((val) {
          val?.id = todoprase.id;
          val?.todoName = todoprase.todoName;
          val?.isComplete = todoprase.isComplete;
          val?.createdAt = todoprase.createdAt;
          val?.updatedAt = todoprase.updatedAt;
          val?.v = todoprase.v;
        });
      } else if (response.hasError) {
        throw Exception('Failed to fetch data: ${response.statusText}');
      }
    } catch (e) {
      rethrow;
    }
  }
}
