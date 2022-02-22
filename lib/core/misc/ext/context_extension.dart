import 'package:flutter/material.dart';

// TODO Remove comments, and add AppLocalization import
extension ContextExtension on BuildContext {
  void showMissingOtpSnackbar(RetryCallback retryCallback) {
    // showSnackbar(this, retryCallback, AppLocalizations.of(this)!.missing_otp_message);
  }

  void showMissingInterestsSnackbar(RetryCallback retryCallback) {
    // showSnackbar(this, retryCallback, AppLocalizations.of(this)!.missing_interests_message);
  }

  void showNoInternetSnackbar(RetryCallback retryCallback) {
    // showSnackbar(this, retryCallback, AppLocalizations.of(this)!.no_internet_message);
  }

  void showGeneralErrorSnackbar(RetryCallback retryCallback) {
    // showSnackbar(this, retryCallback, AppLocalizations.of(this)!.general_error_message);
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
