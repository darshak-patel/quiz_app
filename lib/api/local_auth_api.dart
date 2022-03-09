import 'package:flutter/services.dart';
import 'package:local_auth/auth_strings.dart';
import 'package:local_auth/local_auth.dart';

class LocalAuthApi {
  Future<bool> hasBiometrics() async {
    final _localAuth = LocalAuthentication();
    try {
      return await _localAuth.canCheckBiometrics;
    } on PlatformException catch (_) {
      rethrow;
    }
  }

  Future<bool> authenticateWithBiometrics() async {
    final isAvailable = await hasBiometrics();

    if (!isAvailable) {
      return false;
    }
    final _localAuth = LocalAuthentication();
    try {
      final authenticated = await _localAuth.authenticate(
          localizedReason: "Touch your finger on the sensor to authenticate",
          biometricOnly: true,
          useErrorDialogs: true,
          stickyAuth: false,
          androidAuthStrings: const AndroidAuthMessages(signInTitle: "Authentication"));
      return authenticated;
    } on PlatformException catch (_) {
      rethrow;
    }
  }
}
