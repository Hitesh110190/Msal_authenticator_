import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'msal_authenticator_flutter_platform_interface.dart';

/// An implementation of [MsalAuthenticatorFlutterPlatform] that uses method channels.
class MethodChannelMsalAuthenticatorFlutter extends MsalAuthenticatorFlutterPlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('msal_authenticator_flutter');

  @override
  Future<String?> getPlatformVersion() async {
    final version = await methodChannel.invokeMethod<String>('getPlatformVersion');
    return version;
  }
}
