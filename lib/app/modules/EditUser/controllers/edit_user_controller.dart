import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:getconnect/app/data/Providers/MahasiswaProvider.dart';

class EditUserController extends GetxController {
  //TODO: Implement EditUserController
  MahasiswaProvider mahasiswa = MahasiswaProvider();
  TextEditingController firstNameController = TextEditingController();
  TextEditingController lastNameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController addressController = TextEditingController();
  TextEditingController phoneNumberController = TextEditingController();
  TextEditingController nimController = TextEditingController();

  var argument;

  @override
  void onInit() {
    super.onInit();
    argument = Get.arguments();
    print(argument);
  }

  @override
  void onReady() {
    super.onReady();

    // Pindahkan kode ini ke metode onReady()
    firstNameController.text = argument.firstname;
    lastNameController.text = argument.lastname;
    emailController.text = argument.email;
    addressController.text = argument.address;
    phoneNumberController.text = argument.phoneNumber;
    nimController.text = argument.nim;
    updateSingleData();
  }

  @override
  void onClose() {
    super.onClose();
    firstNameController;
    lastNameController;
    emailController;
    addressController;
    phoneNumberController;
    nimController;
  }

  Future updateSingleData() async {
    try {
      Map<String, dynamic> dataUpdate = {
        'firstname': firstNameController.text,
        'lastname': lastNameController.text,
        'nim': nimController.text,
        'email': emailController.text,
        'address': addressController.text,
        'phoneNumber': phoneNumberController.text
      };
      final response = await mahasiswa.updateData(argument.id, dataUpdate);
      if (response.isOk) {
        print('succes update data');
        Get.back();
      }
    } catch (e) {
      rethrow;
    }
  }
}
