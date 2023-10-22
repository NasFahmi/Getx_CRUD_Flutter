import 'package:get/get.dart';
import 'package:getconnect/app/data/Models/MahasiswaModel.dart';
import 'package:getconnect/app/data/Providers/MahasiswaProvider.dart';

class DetailController extends GetxController {
  MahasiswaProvider mahasiswaProvider = MahasiswaProvider();
  var mahasiswaData = Mahasiswa(
    id: 0,
    firstname: '',
    lastname: '',
    nim: '',
    email: '',
    address: '',
    phoneNumber: '',
  ).obs;
  var argument;
  @override
  void onInit() {
    super.onInit();
    argument = Get.arguments;
    print(argument);
    fetchSingleData(argument);
  }

  @override
  void onClose() {
    super.onClose();
    fetchSingleData(argument);
  }

  Future fetchSingleData(int id) async {
    try {
      final response = await mahasiswaProvider.getData(id);
      if (response.isOk) {
        Map<String, dynamic> data = response.body;
        // print(data);
        Mahasiswa mahasiswa = Mahasiswa.fromJson(data);
        mahasiswaData.update((val) {
          val?.id = mahasiswa.id;
          val?.firstname = mahasiswa.firstname;
          val?.lastname = mahasiswa.lastname;
          val?.nim = mahasiswa.nim;
          val?.email = mahasiswa.email;
          val?.address = mahasiswa.address;
          val?.phoneNumber = mahasiswa.phoneNumber;
        });
      } else if (response.hasError) {
        return Future.error(response);
      }
    } catch (e) {
      return Future.error(e);
    }
  }
}
