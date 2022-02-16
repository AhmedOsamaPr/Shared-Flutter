import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shared_flutter/core/misc/ext/context_extension.dart';
import 'package:shared_flutter/core/misc/presentation/main_state.dart';

class MainStateBlocListener<B extends StateStreamable<S>, S extends MainState>
    extends MultiBlocListener {

  MainStateBlocListener(
      {Key? key,
      required Widget child,
      required List<BlocListener> listeners,
      required RetryCallback retryCallback})
      : super(key: key, child: child, listeners: listeners
  ){
    listeners.add(BlocListener<B, S>(
      listenWhen: (previous, current) =>
      previous.isNetworkDown != current.isNetworkDown,
      listener: (context, state) {
        context.showInternetExceptionSnackbar(retryCallback);
      },
    ));

    listeners.add(BlocListener<B, S>(
      listenWhen: (previous, current) =>
      previous.isUnAuthorized != current.isUnAuthorized,
      listener: (context, state) {
        // TODO add unauthurized channel
      },
    ));

    listeners.add(BlocListener<B, S>(
      listenWhen: (previous, current) =>
      previous.isOtpException != current.isOtpException,
      listener: (context, state) {
        context.showOtpExceptionSnackbar(retryCallback);
      },
    ));

    listeners.add(BlocListener<B, S>(
      listenWhen: (previous, current) =>
      previous.isInterestsException != current.isInterestsException,
      listener: (context, state) {
        context.showInternetExceptionSnackbar(retryCallback);
      },
    ));

    listeners.add( BlocListener<B, S>(
      listenWhen: (previous, current) =>
      previous.isGeneralError != current.isGeneralError,
      listener: (context, state) {
        context.showGeneralExceptionSnackbar(retryCallback);
      },
    ));
  }
}