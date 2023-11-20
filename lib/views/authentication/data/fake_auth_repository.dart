import 'dart:math';
import 'package:flutter_portfolio_webapp/res/in_memory_store.dart';
import 'package:flutter_portfolio_webapp/views/authentication/domain/fake_app_user.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:flutter_portfolio_webapp/views/authentication/domain/app_user.dart';
part 'fake_auth_repository.g.dart';

class FakeAuthRepository {
  final List<FakeAppUser> _users = [];
  final _authState = InMemoryStore<AppUser?>(null);
  Stream<AppUser?> authStateChanges() => _authState.stream;
  AppUser? get currentUser => _authState.value;

  Future<void> signInAnonymously() async {
    await Future.delayed(
      const Duration(seconds: 3),
    );

    _authState.value = AppUser(uid: generateUid(), email: "abc@gmail.com");
  }

  /// Create User Account with E-mail and Password
  createUserWithEmailAndPassword(
      String email, String password, String name) async {
    String uid = "";
    await Future.delayed(const Duration(seconds: 5), () {
      uid = generateUid();
    });

    // check if the email is already in use;
    for (final u in _users) {
      if (u.uid == uid || u.uid == u.uid && u.email == email) {
        print("User: $uid with ${u.name} already exist");
        throw "User already exist";
      }
    }
    if (password.length < 6) {
      throw "Week Password";
    }
    _createNewUser(email, password, uid, name);
  }

  /// Sign-in with E-mail and Password
  signInWithEmailAndPassword(String email, String password) async {
    await Future.delayed(const Duration(seconds: 5));
    // check the given credentials against each registered use
    for (final u in _users) {
      // matching email and password
      if (u.email == email && u.password == password) {
        _authState.value = u;
        return;
      }
      if (u.email == email && u.password != password) {
        throw "Incorrect Password";
      }
    }
    throw "Invalid Login Details";
  }

//  Sign - out existing user
  Future<void> signOut() async => _authState.value = null;

  // Close the InMemory Stream
  void dispose() => _authState.close();

  void _createNewUser(String email, String password, String uid, String name) {
    // create new user
    final user = FakeAppUser(
      password: password,
      uid: uid,
      email: email,
      name: name,
    );

    // register it
    _users.add(user);
    // update the auth state
    _authState.value = user;
  }
}

// Provider for the Auth
@riverpod
FakeAuthRepository authRepository(AuthRepositoryRef ref) {
  final auth = FakeAuthRepository();
  ref.onDispose(() => auth.dispose());
  return auth;
}

// Stream Provider to listen to changes in Auth
@riverpod
Stream<AppUser?> authStateChanges(AuthStateChangesRef ref) {
  final authRepository = ref.watch(authRepositoryProvider);
  return authRepository.authStateChanges();
}

// get a random uid of six-digit with SA as the initials
String generateUid() {
  int randNo = Random().nextInt(900000) + 100000;
  String result = "SA$randNo";
  return result;
}
