import 'package:flutter_test/flutter_test.dart';
import 'package:getconnect/app/data/Providers/MahasiswaProvider.dart';

void main() {
  test('MahasiswaProvider.getAllData should return data', () async {
    final mahasiswaProvider = MahasiswaProvider();
    final data = await mahasiswaProvider.getAllData();
    // print(data.body);
    expect(data.body, isNotNull);
  });

  test("Get spesifik mahasiswa", () async {
    final mahasiswaProvider = MahasiswaProvider();
    final data = await mahasiswaProvider.getData(2);
    // print(data.body);
    expect(data.body, isNotNull);
  });

  test("Post mahasiswa", () async {
    final mahasiswaProvider = MahasiswaProvider();
    final data = {
      'firstname': 'Test from Flutter',
      'lastname': 'Test from Flutter',
      'nim': '1234567890',
      'email': 'G5C9V@example.com',
      'address': 'Test from Flutter',
      'phoneNumber': '1234567890'
    };
    final response = await mahasiswaProvider.postData(data);

    expect(response.statusCode, 201);
  });

  test("Update Mahasiswa", () async {
    final mahasiswaProvider = MahasiswaProvider();
    final data = {
      'firstname': 'Test from Flutter Update',
      'lastname': 'Test from Flutter Update',
    };
    final response = await mahasiswaProvider.updateData(12, data);
    expect(response.statusCode, 200);
  });

  test("Delete Mahasiswa", () async {
    final mahasiswaProvider = MahasiswaProvider();
    final response = await mahasiswaProvider.deleteData(12);
    expect(response.statusCode, 200);
  });
}
