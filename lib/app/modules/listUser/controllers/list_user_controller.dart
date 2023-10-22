import 'package:get/get.dart';
import 'package:getconnect/app/data/Models/MahasiswaModel.dart';
import 'package:getconnect/app/data/Providers/MahasiswaProvider.dart';

class ListUserController extends GetxController {
  MahasiswaProvider mahasiswaProvider = MahasiswaProvider();
  RxList mahasiswa = [].obs;

  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    print('fecthing data');
    fetchAllData();
  }

  @override
  void onClose() {
    super.onClose();
    print('closing data');
    fetchAllData();
  }

  Future fetchAllData() async {
    try {
      final response = await mahasiswaProvider.getAllData();
      if (response.isOk) {
        List<dynamic> data = response.body['data'];
        List<Mahasiswa> dataMahasiswa =
            data.map((dynamic e) => Mahasiswa.fromJson(e)).toList();
        mahasiswa.assignAll(
            dataMahasiswa); // Assign the data from dataAll to mahasiswa
      } else if (response.hasError) {
        return Future.error(response);
      }
    } catch (e) {
      return Future.error(e);
    }
  }
}
