// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import 'package:flutter_portfolio_webapp/res/interaction/i_interaction.dart';
import 'package:flutter_portfolio_webapp/views/authentication/data/fake_auth_repository.dart';

part 'sign_in_controller.g.dart';

@riverpod
class SignInController extends _$SignInController {
  late IAlertI alert;

  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Future<void> build() async {
    alert = ref.watch(alertProvider);
    // emailController.dispose();
    // passwordController.dispose();
    // nameController.dispose();
    // TODO: implement build
    // throw UnimplementedError();
  }

  Future<void> signInUser() async {
    final authRepository = ref.read(authRepositoryProvider);
    state = const AsyncLoading();
    state = await AsyncValue.guard(authRepository.signInAnonymously);
  }

  Future<void> sigInUserWithEmailAndPassword() async {
    final authRepository = ref.read(authRepositoryProvider);
    state = const AsyncLoading();
    state = await AsyncValue.guard(
      authRepository.signInWithEmailAndPassword(
        emailController.text.trim(),
        passwordController.text.trim(),
      ),
    );
  }

  createUserWithEmailAndPassword() async {
    final authRepository = ref.read(authRepositoryProvider);
    state = const AsyncLoading();
    state = await AsyncValue.guard(() async {
      if (nameController.text.isEmpty) {
        alert.showErrorAlert("Please provider your name");
        return;
      }
      if (emailController.text.isEmpty) {
        alert.showErrorAlert("Please provider your e-mail");
        return;
      }
      if (passwordController.text.isEmpty) {
        alert.showErrorAlert("Please enter your password");
        return;
      }
      if (passwordController.text.length < 6) {
        alert.showErrorAlert("Password must be more than six-characters");
        return;
      }
      await authRepository.createUserWithEmailAndPassword(
        emailController.text.trim(),
        passwordController.text.trim(),
        nameController.text.trim(),
      );
    });
  }
}
