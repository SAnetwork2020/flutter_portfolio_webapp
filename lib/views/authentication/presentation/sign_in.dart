import 'package:flutter/material.dart';
import 'package:flutter_portfolio_webapp/res/async_value_ui.dart';
import 'package:flutter_portfolio_webapp/res/constants.dart';
import 'package:flutter_portfolio_webapp/views/authentication/presentation/sign_in_controller.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class SignInScreen extends ConsumerStatefulWidget {
  const SignInScreen({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _SignInScreenState();
}

class _SignInScreenState extends ConsumerState<SignInScreen> {
  @override
  void dispose() {
    final v = ref.read(signInControllerProvider.notifier);
    v.emailController.dispose();
    v.passwordController.dispose();
    v.nameController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    ref.listen<AsyncValue>(
      signInControllerProvider,
      (_, state) => state.showSnackbarOnError(context),
    );
    final state = ref.watch(signInControllerProvider);
    final v = ref.watch(signInControllerProvider.notifier);
    return Scaffold(
      backgroundColor: bgColor,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              "Please Register to view Portfolio",
              style: TextStyle(
                fontSize: defaultPadding,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: defaultPadding * 2),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: defaultPadding),
              child: TextFormField(
                controller: v.nameController,
                decoration: const InputDecoration(
                  hintText: "Enter your name",
                  fillColor: Colors.white,
                  filled: true,
                ),
              ),
            ),
            const SizedBox(height: defaultPadding),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: defaultPadding),
              child: TextFormField(
                controller: v.emailController,
                decoration: const InputDecoration(
                  hintText: "Enter your email",
                  fillColor: Colors.white,
                  filled: true,
                ),
              ),
            ),
            const SizedBox(height: defaultPadding),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: defaultPadding),
              child: TextFormField(
                controller: v.passwordController,
                decoration: const InputDecoration(
                  hintText: "Enter your password",
                  fillColor: Colors.white,
                  filled: true,
                ),
              ),
            ),
            const SizedBox(height: defaultPadding),
            Container(
              width: double.infinity,
              margin: const EdgeInsets.symmetric(horizontal: defaultPadding),
              child: ElevatedButton(
                onPressed: state.isLoading
                    ? null
                    : () => ref
                        .read(signInControllerProvider.notifier)
                        // .signInUser(),
                        .createUserWithEmailAndPassword(),
                child: state.isLoading
                    ? const CircularProgressIndicator()
                    : const Text("Create Account & Sign In"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
