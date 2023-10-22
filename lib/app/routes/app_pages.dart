import 'package:get/get.dart';

import '../modules/AddUser/bindings/add_user_binding.dart';
import '../modules/AddUser/views/add_user_view.dart';
import '../modules/Detail/bindings/detail_binding.dart';
import '../modules/Detail/views/detail_view.dart';
import '../modules/EditUser/bindings/edit_user_binding.dart';
import '../modules/EditUser/views/edit_user_view.dart';
import '../modules/home/bindings/home_binding.dart';
import '../modules/home/views/home_view.dart';
import '../modules/listUser/bindings/list_user_binding.dart';
import '../modules/listUser/views/list_user_view.dart';
import '../modules/listtodos/bindings/listtodos_binding.dart';
import '../modules/listtodos/views/listtodos_view.dart';
import '../modules/todosdetails/bindings/todosdetails_binding.dart';
import '../modules/todosdetails/views/todosdetails_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.HOME;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.LIST_USER,
      page: () => const ListUserView(),
      binding: ListUserBinding(),
    ),
    GetPage(
      name: _Paths.ADD_USER,
      page: () => const AddUserView(),
      binding: AddUserBinding(),
    ),
    GetPage(
      name: _Paths.EDIT_USER,
      page: () => const EditUserView(),
      binding: EditUserBinding(),
    ),
    GetPage(
      name: _Paths.DETAIL,
      page: () => const DetailView(),
      binding: DetailBinding(),
    ),
    GetPage(
      name: _Paths.LISTTODOS,
      page: () => const ListtodosView(),
      binding: ListtodosBinding(),
    ),
    GetPage(
      name: _Paths.TODOSDETAILS,
      page: () => const TodosdetailsView(),
      binding: TodosdetailsBinding(),
    ),
  ];
}
