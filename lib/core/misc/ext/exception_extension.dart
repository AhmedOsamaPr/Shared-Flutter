// import 'package:shared_flutter/core/misc/presentation/main_state.dart';
// import 'package:wasla_flutter_module/core/misc/error_handling/exceptions.dart';
// import 'package:wasla_flutter_module/core/misc/presentation/main_state.dart';

// extension HandleGeneralErrors on WaslaException {
//   MainState mapToMainState(MainState currentState) {
//     if (this is ApiException) {
//       return currentState.copyMainState(isNetworkDown: true);
//     } else if (this is NoInternetException) {
//       return currentState.copyMainState(isNetworkDown: true);
//     } else if (this is UnauthorizedException) {
//       return currentState.copyMainState(isUnAuthorized: true);
//     } else if (this is OtpException) {
//       return currentState.copyMainState(isUnAuthorized: true);
//     } else if (this is InterestsException) {
//       return currentState.copyMainState(isNetworkDown: true);
//     } else if (this is BusinessException) {
//       return currentState.copyMainState(isNetworkDown: true);
//     } else {
//       throw this;
//     }
//   }
// }
