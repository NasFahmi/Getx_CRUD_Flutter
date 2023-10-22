import 'package:get/get.dart';

class TodosProvider extends GetConnect {
  final String BASE_URL = "https://calm-plum-jaguar-tutu.cyclic.app/todos";

  Future<Response> getAllData() => get('${BASE_URL}');

  Future<Response> getData(String id) => get('${BASE_URL}/$id');
}
