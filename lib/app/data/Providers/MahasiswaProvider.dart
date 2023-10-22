import 'package:get/get.dart';

// ! package khusus untuk request data menggunakan restfull api atau websocket
class MahasiswaProvider extends GetConnect {
  final String BASE_URL = "http://127.0.0.1:8000/api";
  //! di GetxConnect cukup dengan menggunakan seperti ini yang nanti returnnya adalh Response.
  //! dan jika ingin menget response body maka kamu bisa menggunakan .body seperti data.body sama dengan yang di dtest di data_test

  Future<Response> getAllData() => get('${BASE_URL}/mahasiswa');

  Future<Response> getData(int id) => get('${BASE_URL}/mahasiswa/$id');

  //! semisal ingin post kedalam url yang terdapat data maka dengan parameter ke 2 nya lah data tersebut
  Future<Response> postData(Map data) => post('${BASE_URL}/mahasiswa', data);

  Future<Response> updateData(int id, Map data) =>
      patch('${BASE_URL}/mahasiswa/$id', data);

  Future<Response> deleteData(int id) => delete('${BASE_URL}/mahasiswa/$id');
}
