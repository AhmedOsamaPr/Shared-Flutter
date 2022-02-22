import 'package:equatable/equatable.dart';
import 'main_event.dart';

class MainState extends Equatable {
  final ErrorState isNetworkDown;
  final ErrorState isUnAuthorized;
  final ErrorState isMissingOtp;
  final ErrorState isMissingInterests;
  final ErrorState isGeneralError;

  const MainState(
      {this.isNetworkDown = const ErrorState(),
        this.isUnAuthorized = const ErrorState(),
        this.isMissingOtp = const ErrorState(),
        this.isMissingInterests = const ErrorState(),
        this.isGeneralError = const ErrorState()});

  MainState.fromPreviousState(MainState prevState)
      : isNetworkDown = prevState.isNetworkDown,
        isUnAuthorized = prevState.isUnAuthorized,
        isMissingOtp = prevState.isMissingOtp,
        isMissingInterests = prevState.isMissingInterests,
        isGeneralError = prevState.isGeneralError;

  MainState copyMainState<E extends MainState>(
      {MainEvent? failedEvent,
        bool isNetworkDown = false,
        bool isUnAuthorized = false,
        bool isOtpException = false,
        bool isInterestsException = false,
        bool isGeneralError = false}) {

    return MainState(
        isNetworkDown: isNetworkDown
            ? ErrorState(failedEvent: failedEvent)
            : this.isNetworkDown,
        isUnAuthorized: isUnAuthorized
            ? ErrorState(failedEvent: failedEvent)
            : this.isUnAuthorized,
        isMissingOtp: isOtpException
            ? ErrorState(failedEvent: failedEvent)
            : isMissingOtp,
        isMissingInterests: isInterestsException
            ? ErrorState(failedEvent: failedEvent)
            : isMissingInterests,
        isGeneralError: isGeneralError
            ? ErrorState(failedEvent: failedEvent)
            : this.isGeneralError);
  }

  @override
  List<Object?> get props => [
    isNetworkDown,
    isUnAuthorized,
    isMissingOtp,
    isMissingInterests,
    isGeneralError,
  ];
}

class ErrorState {
  final MainEvent? failedEvent;

  const ErrorState({this.failedEvent});
}
