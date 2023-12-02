
import 'msal_authenticator_flutter_platform_interface.dart';

class MsalAuthenticatorFlutter {
  Future<String?> getPlatformVersion() {
    return MsalAuthenticatorFlutterPlatform.instance.getPlatformVersion();
  }
}
