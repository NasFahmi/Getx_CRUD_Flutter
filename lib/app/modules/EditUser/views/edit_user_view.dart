import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/edit_user_controller.dart';

class EditUserView extends GetView<EditUserController> {
  const EditUserView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('EditUserView'),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'First Name',
                ),
                const SizedBox(
                  height: 4,
                ),
                _TextFIeld(
                    hint: 'Firstname',
                    textController: controller.firstNameController),
                const SizedBox(
                  height: 8,
                ),
                const Text('Last Name'),
                const SizedBox(
                  height: 4,
                ),
                _TextFIeld(
                    hint: 'Last Name',
                    textController: controller.lastNameController),
                const SizedBox(
                  height: 8,
                ),
                const Text('Email'),
                const SizedBox(
                  height: 4,
                ),
                _TextFIeld(
                    hint: 'Email', textController: controller.emailController),
                const Text('Address'),
                const SizedBox(
                  height: 4,
                ),
                _TextFIeld(
                    hint: 'Address',
                    textController: controller.addressController),
                const Text('Phone Number'),
                const SizedBox(
                  height: 4,
                ),
                _TextFIeld(
                    hint: 'Phone Number',
                    textController: controller.phoneNumberController),
                const Text('Nim'),
                const SizedBox(
                  height: 4,
                ),
                _TextFIeld(
                    hint: 'Nim', textController: controller.nimController),
                const SizedBox(
                  height: 16,
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      minimumSize: Size(Get.width, 48)),
                  onPressed: () {
                    controller.updateSingleData();
                  },
                  child: const Text('Edit User'),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  TextField _TextFIeld({String? hint, TextEditingController? textController}) {
    return TextField(
      controller: textController,
      decoration: InputDecoration(
        hintText: hint,
        enabledBorder: OutlineInputBorder(
          // ! border ini akan dieksekusi ketika border dilihat saja tidak dipilih
          borderRadius: BorderRadius.circular(8),
          borderSide: BorderSide(
            color: Colors.blue.shade500,
            width: 2.0,
          ),
        ),
        border: OutlineInputBorder(
          // ! border ini akan dieksekusi ketika input dipilih
          borderRadius: BorderRadius.circular(16),
          //! property borderSide dipindah ke enableBoerderSIde
          // borderSide: BorderSide(
          //   color: Colors.red.shade500,
          //   width: 8.0,
          // ),
        ),
      ),
    );
  }
}
