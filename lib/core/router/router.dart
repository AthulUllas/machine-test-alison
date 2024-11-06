import 'package:alisons_machine_test/feature/authentication/controller/auth_controller.dart';
import 'package:alisons_machine_test/feature/authentication/view/pages/login_page.dart';
import 'package:alisons_machine_test/feature/home/view/pages/home_page.dart';
import 'package:alisons_machine_test/main.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

final router = GoRouter(
  initialLocation: LoginPage.routePath,
  navigatorKey: App.navigatorKey,
  routes: [
    GoRoute(
      path: LoginPage.routePath,
      builder: (context, state) => const LoginPage(),
      redirect: (context, state) {
        final isLoggedIn =
            ProviderScope.containerOf(context).read(authControllerProvider) !=
                null;

        if (isLoggedIn) {
          return HomePage.routePath;
        }

        return null;
      },
    ),
    GoRoute(
      path: HomePage.routePath,
      builder: (context, state) => const HomePage(),
    )
  ],
);
