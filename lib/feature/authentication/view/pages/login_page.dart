import 'package:alisons_machine_test/feature/authentication/controller/auth_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class LoginPage extends HookConsumerWidget {
  static const routePath = '/login';

  const LoginPage({super.key});

  @override
  Widget build(BuildContext context, ref) {
    final emailController = useTextEditingController();
    final passwordController = useTextEditingController();

    final isLoading = useState(false);
    Future<void> onSignIn() async {
      isLoading.value = true;

      final email = emailController.text;
      final password = passwordController.text;

      await ref.read(authControllerProvider.notifier).login(email, password);

      isLoading.value = false;
    }

    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/background.jpg'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Container(
            color: Colors.black.withOpacity(0.5),
          ),
          Center(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Sign In',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 32,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 20),
                  TextField(
                    controller: emailController,
                    style: const TextStyle(color: Colors.white),
                    decoration: const InputDecoration(
                      hintText: 'Email Address',
                      hintStyle: TextStyle(color: Colors.white),
                      prefixIcon: Padding(
                        padding: EdgeInsets.only(bottom: 8.0),
                        child: Icon(Icons.email, color: Colors.white),
                      ),
                    ),
                  ),
                  const SizedBox(height: 20),
                  TextField(
                    controller: passwordController,
                    style: const TextStyle(color: Colors.white),
                    obscureText: true,
                    decoration: const InputDecoration(
                      hintText: 'Password',
                      hintStyle: TextStyle(color: Colors.white),
                      prefixIcon: Padding(
                        padding: EdgeInsets.only(bottom: 8.0),
                        child: Icon(Icons.phone, color: Colors.white),
                      ),
                      suffixIcon: Padding(
                        padding: EdgeInsets.only(bottom: 8.0),
                        child: Icon(Icons.visibility, color: Colors.white),
                      ),
                    ),
                  ),
                  const SizedBox(height: 10),
                  const Align(
                    alignment: Alignment.centerRight,
                    child: Text(
                      'Forgot Password?',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                  const SizedBox(height: 30),
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(50),
                        ),
                        padding: const EdgeInsets.symmetric(vertical: 15),
                      ),
                      onPressed: onSignIn,
                      child: isLoading.value
                          ? const CircularProgressIndicator()
                          : const Text(
                              'Sign In',
                              style:
                                  TextStyle(color: Colors.black, fontSize: 18),
                            ),
                    ),
                  ),
                  const SizedBox(height: 50),
                  const Center(
                    child: Text(
                      "Don't have an account? Create Account",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
