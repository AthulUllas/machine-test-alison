import 'dart:convert';

import 'package:alisons_machine_test/feature/authentication/view/pages/login_page.dart';
import 'package:go_router/go_router.dart';
import 'package:alisons_machine_test/main.dart';
import 'package:http/http.dart' as http;
import 'package:alisons_machine_test/feature/home/models/home_api_response_model.dart';
import 'package:get_storage/get_storage.dart';

class HomeServices {
  static final _storage = GetStorage();

  static Future<HomeApiResponseModel> getData() async {
    final token = _storage.read('token');
    final userId = _storage.read('userId');

    final response = await http.post(Uri.parse(
        'https://swan.alisonsnewdemo.online/api/home?id=$userId&token=$token'));

    if (response.statusCode == 200) {
      final json = jsonDecode(response.body);

      final responseData = HomeApiResponseModel.fromJson(json);

      if (responseData.success == null) {
        _storage.erase();

        App.navigatorKey.currentContext!.pushReplacement(LoginPage.routePath);
      }

      return responseData;
    }

    throw Exception('Cannot get home API data');
  }
}
