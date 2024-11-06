import 'package:go_router/go_router.dart';
import 'package:alisons_machine_test/core/utils/snackbar_utils.dart';
import 'package:alisons_machine_test/feature/authentication/models/login_response_model.dart';
import 'package:alisons_machine_test/feature/authentication/services/auth_services.dart';
import 'package:alisons_machine_test/feature/home/view/pages/home_page.dart';
import 'package:alisons_machine_test/main.dart';
import 'package:get_storage/get_storage.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'auth_controller.g.dart';

@riverpod
class AuthController extends _$AuthController {
  static final _storage = GetStorage();

  @override
  LoginResponseModel? build() {
    final userId = _storage.read('userId');
    final token = _storage.read('token');

    if (token != null && userId != null) {
      return LoginResponseModel(token: token, userId: userId);
    } else {
      return null;
    }
  }

  Future<void> login(String email, String password) async {
    try {
      final response = await AuthServices.login(email, password);
      state = response;

      _storage.write('token', response.token);
      _storage.write('userId', response.userId);

      App.navigatorKey.currentContext!.push(HomePage.routePath);
    } catch (e) {
      SnackBarUtils.showMessage('Login failed');
    }
  }
}
