class Mahasiswa {
  int id;
  String firstname;
  String lastname;
  String nim;
  String email;
  String address;
  String phoneNumber;
  Mahasiswa(
      {required this.id,
      required this.firstname,
      required this.lastname,
      required this.nim,
      required this.email,
      required this.address,
      required this.phoneNumber});

  factory Mahasiswa.fromJson(Map<String, dynamic> json) {
    return Mahasiswa(
      id: json['id'] ?? '',
      firstname: json['firstname'] ?? '',
      lastname: json['lastname'] ?? '',
      nim: json['nim'] ?? '',
      email: json['email'] ?? '',
      address: json['address'] ?? '',
      phoneNumber: json['phoneNumber'] ?? '',
    );
  }
}
