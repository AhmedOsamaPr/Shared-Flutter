import 'package:equatable/equatable.dart';

class MainState extends Equatable {
  final int isNetworkDown;
  final int isUnAuthorized;
  final int isOtpException;
  final int isInterestsException;
  final int isGeneralError;

  const MainState(
      {this.isNetworkDown = 0,
      this.isUnAuthorized = 0,
      this.isOtpException = 0,
      this.isInterestsException = 0,
      this.isGeneralError = 0});

  MainState.fromPreviousState(MainState prevState)
      : isNetworkDown = prevState.isNetworkDown,
        isUnAuthorized = prevState.isUnAuthorized,
        isOtpException = prevState.isOtpException,
        isInterestsException = prevState.isInterestsException,
        isGeneralError = prevState.isGeneralError;

  MainState copyMainState(
      {bool isNetworkDown = false,
      bool isUnAuthorized = false,
      bool isOtpException = false,
      bool isInterestsException = false,
      bool isGeneralError = false}) {
    return MainState(
        isNetworkDown:
            isNetworkDown ? this.isNetworkDown + 1 : this.isNetworkDown,
        isUnAuthorized:
            isUnAuthorized ? this.isUnAuthorized + 1 : this.isUnAuthorized,
        isOtpException:
            isOtpException ? this.isOtpException + 1 : this.isOtpException,
        isInterestsException: isInterestsException
            ? this.isInterestsException + 1
            : this.isInterestsException,
        isGeneralError:
            isGeneralError ? this.isGeneralError + 1 : this.isGeneralError);
  }

  @override
  List<Object?> get props => [
        isNetworkDown,
        isUnAuthorized,
        isOtpException,
        isInterestsException,
        isGeneralError,
      ];

}

