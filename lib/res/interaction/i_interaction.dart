import 'package:riverpod_annotation/riverpod_annotation.dart';
part 'i_interaction.g.dart';
abstract class IAlertI {
  void showSuccessAlert(String msg, {Function? onTap});
  void showErrorAlert(String msg);
  void showInfotAlert(String msg, {Function? onTap});
  void closeAlert();
}

@riverpod
IAlertI alert(AlertRef ref) {
  throw UnimplementedError();
}