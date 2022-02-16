import 'package:flutter/material.dart';

extension ContextExtension on BuildContext {
  void showOtpExceptionSnackbar(RetryCallback retryCallback) {
    showSnackbar(this, retryCallback, "You need to verify your phone number first");
  }

  void showInterestsExceptionSnackbar(RetryCallback retryCallback) {
    showSnackbar(this, retryCallback, "You need to add topics you love first");
  }

  void showInternetExceptionSnackbar(RetryCallback retryCallback) {
    showSnackbar(this, retryCallback, "Internet connection lost");
  }

  void showGeneralExceptionSnackbar(RetryCallback retryCallback) {
    showSnackbar(this, retryCallback, "Please try again if the problem continue, contact customer support");
  }
}

typedef RetryCallback = void Function();

void showSnackbar(BuildContext context, RetryCallback retryCallback, String error){
  ScaffoldMessenger.of(context).showSnackBar(SnackBar(
    content: Text(error),
    action: SnackBarAction(
      label: "Retry",
      onPressed:() => retryCallback.call(),
    ),
  ));
}
