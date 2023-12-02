import 'package:flutter_test/flutter_test.dart';
import 'package:msal_authenticator_flutter/msal_authenticator_flutter.dart';
import 'package:msal_authenticator_flutter/msal_authenticator_flutter_platform_interface.dart';
import 'package:msal_authenticator_flutter/msal_authenticator_flutter_method_channel.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

class MockMsalAuthenticatorFlutterPlatform
    with MockPlatformInterfaceMixin
    implements MsalAuthenticatorFlutterPlatform {

  @override
  Future<String?> getPlatformVersion() => Future.value('42');
}

void main() {
  final MsalAuthenticatorFlutterPlatform initialPlatform = MsalAuthenticatorFlutterPlatform.instance;

  test('$MethodChannelMsalAuthenticatorFlutter is the default instance', () {
    expect(initialPlatform, isInstanceOf<MethodChannelMsalAuthenticatorFlutter>());
  });

  test('getPlatformVersion', () async {
    MsalAuthenticatorFlutter msalAuthenticatorFlutterPlugin = MsalAuthenticatorFlutter();
    MockMsalAuthenticatorFlutterPlatform fakePlatform = MockMsalAuthenticatorFlutterPlatform();
    MsalAuthenticatorFlutterPlatform.instance = fakePlatform;

    expect(await msalAuthenticatorFlutterPlugin.getPlatformVersion(), '42');
  });
}
