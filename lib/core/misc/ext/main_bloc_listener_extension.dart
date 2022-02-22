import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shared_flutter/core/misc/presentation/main_bloc.dart';
import 'package:shared_flutter/core/misc/presentation/main_event.dart';
import 'package:shared_flutter/core/misc/presentation/main_state.dart';
import 'package:shared_flutter/core/misc/ext/context_extension.dart';

class MainStateBlocListener<B extends MainBloc<E, S>, E extends MainEvent,
S extends MainState> extends MultiBlocListener {
  MainStateBlocListener({
    Key? key,
    List<BlocListener<B, S>>? additionalListeners,
    required Widget child,
  }) : super(
      key: key,
      child: child,
      listeners: _GeneralListenersGenerator<B, E, S>()
          ._generate(additionalListeners: additionalListeners));
}

class _GeneralListenersGenerator<B extends MainBloc<E, S>, E extends MainEvent,
S extends MainState> {
  List<BlocListener<B, S>> _generate(
      {List<BlocListener<B, S>>? additionalListeners}) {
    List<BlocListener<B, S>> listeners = List.empty(growable: true);
    listeners.add(_provideGeneralErrorListener());
    listeners.add(_provideNetworkDownListener());
    listeners.add(_provideMissingOtpListener());
    listeners.add(_provideMissingInterestsListener());
    if (additionalListeners != null) listeners.addAll(additionalListeners);
    return listeners;
  }

  BlocListener<B, S> _provideNetworkDownListener() {
    return BlocListener<B, S>(
      listenWhen: (previous, current) =>
      previous.isNetworkDown != current.isNetworkDown,
      listener: (context, state) {
        context.showNoInternetSnackbar((){
          if (state.isNetworkDown.failedEvent is E) {
            context.read<B>().add(state.isNetworkDown.failedEvent as E);
          }
        }
        );
      },
    );
  }

  BlocListener<B, S> _provideMissingOtpListener() {
    return BlocListener<B, S>(
      listenWhen: (previous, current) =>
      previous.isMissingOtp != current.isMissingOtp,
      listener: (context, state) {
        context.showMissingOtpSnackbar((){
          if (state.isMissingOtp.failedEvent is E) {
            context.read<B>().add(state.isMissingOtp.failedEvent as E);
          }
        }
        );
      },
    );
  }

  BlocListener<B, S> _provideMissingInterestsListener() {
    return BlocListener<B, S>(
      listenWhen: (previous, current) =>
      previous.isMissingInterests != current.isMissingInterests,
      listener: (context, state) {
        context.showMissingInterestsSnackbar((){
          if (state.isMissingInterests.failedEvent is E) {
            context.read<B>().add(state.isMissingInterests.failedEvent as E);
          }
        }
        );
      },
    );
  }

  BlocListener<B, S> _provideGeneralErrorListener() {
    return BlocListener<B, S>(
      listenWhen: (previous, current) =>
      previous.isGeneralError != current.isGeneralError,
      listener: (context, state) {
        context.showMissingInterestsSnackbar((){
          if (state.isGeneralError.failedEvent is E) {
            context.read<B>().add(state.isGeneralError.failedEvent as E);
          }
        }
        );
      },
    );
  }
}
