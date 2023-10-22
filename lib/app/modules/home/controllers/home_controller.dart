import 'package:get/get.dart';

class HomeController extends GetxController {
  //TODO: Implement HomeController

  final count = 0.obs;
  //!onInit() : Dipanggil saat controller dibuat. Ini adalah tempat yang tepat untuk melakukan inisialisasi awal, seperti memuat data dari server atau mengatur pendengar untuk perubahan status.
  @override
  void onInit() {
    super.onInit();
    print('HomeController onInit');
    print('HomeController count: $count');
  }
  //! onReady() : Dipanggil setelah widget yang menggunakan controller dirender di layar. Ini adalah tempat yang tepat untuk melakukan pekerjaan yang perlu dilakukan setelah widget dirender, seperti menampilkan dialog atau memulai animasi.

  @override
  void onReady() {
    super.onReady();
    print('HomeController onReady');
  }
  //! onClose() : Dipanggil saat controller dibebaskan dari memori. Ini adalah tempat yang tepat untuk membersihkan sumber daya apa pun yang digunakan oleh controller, seperti menutup koneksi database atau berhenti mendengarkan perubahan status.

  @override
  void onClose() {
    super.onClose();
    print('HomeController onClose');
  }

  //! catatan
  //! Metode onInit(), onReady(), dan onClose() tidak wajib diimplementasikan. Jika Anda tidak membutuhkannya, Anda dapat membiarkannya kosong.
  //! Metode onInit() dan onReady() dipanggil secara sinkron, sedangkan metode onClose() dipanggil secara asinkron.
  //! Metode onInit() dan onReady() dipanggil hanya sekali, ketika controller pertama kali dibuat. Metode onClose() dipanggil setiap kali controller dibebaskan dari memori.
  void increment() => count.value++;
}
