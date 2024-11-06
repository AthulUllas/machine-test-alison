import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:alisons_machine_test/feature/authentication/models/login_response_model.dart';

class AuthServices {
  static Future<LoginResponseModel> login(String email, String password) async {
    final response = await http.post(Uri.parse(
        'https://swan.alisonsnewdemo.online/api/login?email_phone=$email&password=$password'));

    if (response.statusCode == 200) {
      final json = jsonDecode(response.body);

      return LoginResponseModel(
        token: json['customerdata']['token'],
        userId: json['customerdata']['id'],
      );
    }

    throw Exception('Login failed.');
  }
}
