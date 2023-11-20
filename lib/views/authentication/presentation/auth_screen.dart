import 'package:flutter/material.dart';
import 'package:flutter_portfolio_webapp/views/authentication/data/fake_auth_repository.dart';
import 'package:flutter_portfolio_webapp/views/authentication/presentation/sign_in.dart';
import 'package:flutter_portfolio_webapp/views/home/home.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class AuthScreen extends ConsumerWidget {
  const AuthScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final authState = ref.watch(authStateChangesProvider);
    return authState.maybeWhen(
        data: (user) => user != null ? const HomePage() : const SignInScreen(),
        orElse: () => Scaffold(
              appBar: AppBar(),
              body: const Center(
                child: CircularProgressIndicator(),
              ),
            ));
  }
}
