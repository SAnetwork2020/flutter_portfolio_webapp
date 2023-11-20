// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter_portfolio_webapp/views/authentication/domain/app_user.dart';

class FakeAppUser extends AppUser {
  FakeAppUser({
    required this.password,
    required super.uid,
    required super.email,
    required this.name,
  });
  final String password;
  final String name;
}
