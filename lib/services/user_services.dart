part of 'services.dart';

class UserServices {
  static Future<ApiRetunValue<User>> signIn(
      String email, String password) async {
    await Future.delayed(Duration(milliseconds: 900));

    return ApiRetunValue(value: mockUser);

    // return ApiRetunValue(message: "Email belum terdaftar\nSilahkan daftarkan terlebih dahulu");
  }
}
