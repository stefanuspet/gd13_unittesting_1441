import 'package:flutter_test/flutter_test.dart';
import 'package:gd13_unittesting_1441/repository/login_repository.dart';

void main() {
  test("login success", () async {
    final hasil = await LoginRepository.logintesting(
        username: "petra_1441", password: "b_1441");
    expect(hasil?.data.username, equals("petra_1441"));
    expect(hasil?.data.password, equals("b_1441"));
  });

  test("login failed", () async {
    final result = await LoginRepository.logintesting(
        username: "invalid", password: "invalid");
    expect(result, null);
  });
}
