import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getconnect/app/data/Providers/MahasiswaProvider.dart';
import 'package:getconnect/app/routes/app_pages.dart';

class AddUserController extends GetxController {
  MahasiswaProvider mahasiswa = MahasiswaProvider();
  TextEditingController firstNameController = TextEditingController();
  TextEditingController lastNameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController addressController = TextEditingController();
  TextEditingController phoneNumberController = TextEditingController();
  TextEditingController nimController = TextEditingController();
  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
    submit();
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

  Future addData() async {
    try {
      Map<String, dynamic> dataPost = {
        'firstname': firstNameController.text,
        'lastname': lastNameController.text,
        'nim': nimController.text,
        'email': emailController.text,
        'address': addressController.text,
        'phoneNumber': phoneNumberController.text
      };
      final response = await mahasiswa.postData(dataPost);
      if (response.isOk) {
        print('succes add data');
        Get.toNamed(Routes.LIST_USER);
      }
    } catch (e) {
      rethrow;
    }
  }

  void submit() {
    if (firstNameController.text.isNotEmpty &&
        lastNameController.text.isNotEmpty &&
        emailController.text.isNotEmpty &&
        addressController.text.isNotEmpty &&
        phoneNumberController.text.isNotEmpty &&
        nimController.text.isNotEmpty) {
      addData();
    }
  }
}
