import 'package:bot_toast/bot_toast.dart';
import 'package:flutter/material.dart';
import 'package:flutter_portfolio_webapp/res/interaction/i_interaction.dart';

class BotToastAlert implements IAlertI {
  @override
  void closeAlert() {
    // TODO: implement closeAlert
  }

  @override
  void showErrorAlert(String msg) {
    // TODO: implement showErrorAlert
    BotToast.showCustomNotification(
      align: Alignment.topCenter,
      duration: const Duration(seconds: 5),
      toastBuilder: (cancel) => Material(
        color: Colors.transparent,
        child: Container(
          margin: const EdgeInsets.only(top: 5, right: 16, left: 16),
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 13),
          decoration: BoxDecoration(
            color: Colors.red,
            borderRadius: BorderRadius.circular(8),
          ),
          child: Row(
            children: [
              const Icon(
                Icons.error_outline_rounded,
                color: Colors.white,
              ),
              const SizedBox(width: 8),
              Expanded(
                child: Text(
                  msg,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 15,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
              InkWell(
                onTap: () => cancel(),
                child: const Icon(
                  Icons.cancel,
                  color: Colors.white,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  void showInfotAlert(String msg, {Function? onTap}) {
    // TODO: implement showIngoAlert
  }

  @override
  void showSuccessAlert(String msg, {Function? onTap}) {
    // TODO: implement showSuccessAlert
    BotToast.cleanAll();
    BotToast.showCustomNotification(
      align: Alignment.topCenter,
      duration: const Duration(seconds: 5),
      toastBuilder: (cc) => Material(
        color: Colors.transparent,
        child: Container(
          margin: const EdgeInsets.only(top: 5, right: 16, left: 16),
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 13),
          decoration: BoxDecoration(
            color: Colors.green,
            borderRadius: BorderRadius.circular(8),
          ),
          child: Row(
            children: [
              const Icon(
                Icons.check_circle_outline_rounded,
                color: Colors.white,
              ),
              const SizedBox(width: 8),
              Expanded(
                child: Text(
                  msg,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 15,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
              InkWell(
                onTap: () => cc(),
                child: const Icon(
                  Icons.cancel,
                  color: Colors.white,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
