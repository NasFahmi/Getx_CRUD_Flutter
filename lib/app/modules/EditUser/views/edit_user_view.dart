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
                Text(
                  'First Name',
                ),
                SizedBox(
                  height: 4,
                ),
                _TextFIeld('First Name'),
                SizedBox(
                  height: 8,
                ),
                Text('Last Name'),
                SizedBox(
                  height: 4,
                ),
                _TextFIeld('Last Name'),
                SizedBox(
                  height: 8,
                ),
                Text('Email'),
                SizedBox(
                  height: 4,
                ),
                _TextFIeld('Email'),
                SizedBox(
                  height: 16,
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      minimumSize: Size(Get.width, 48)),
                  onPressed: () {},
                  child: Text('Submit Edit'),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  TextField _TextFIeld(String hint) {
    return TextField(
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
